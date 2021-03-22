package com.pats.qeubeenewsweb.config;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.pats.qeubeenewsweb.entity.QbNewsLabelBondIssuerInfo;
import com.pats.qeubeenewsweb.entity.dto.apidto.CdcBondValuationDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.CsiBondValuationDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.QbwebLiqudityStatisticIssuerScoreDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.RecentNthWorkdaysDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.SdbCdcBondValuationDTO;
import com.pats.qeubeenewsweb.entity.dto.apidto.SdnBondDealEodHistoryDTO;
import com.pats.qeubeenewsweb.enums.BondTradeMethodEnum;
import com.pats.qeubeenewsweb.enums.CHDApiNameAndDataSourceIdEnum;
import com.pats.qeubeenewsweb.service.CDHRestfulApiRequestService;
import com.pats.qeubeenewsweb.service.IQbNewsLabelBondIssuerInfoService;
import com.pats.qeubeenewsweb.utils.LocalDateTimeUtils;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import javax.annotation.PostConstruct;
import java.lang.reflect.Field;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;
import java.util.stream.Collectors;


/**
 * 缓存API数据的BEAN
 *
 * @author :mqt
 * @version :1.0.0
 * @since :2020.10.19
 */
@Data
@Component
@Slf4j
public class ApiDataCache {

    /**
     * 存储数据的map
     */
    private static final ConcurrentHashMap<String, CopyOnWriteArrayList<Object>> API_CACHE_MAP = new ConcurrentHashMap<>(16);

    @Autowired
    private CDHRestfulApiRequestService cdhRestfulApiRequestService;

    @Autowired
    private IQbNewsLabelBondIssuerInfoService qbNewsLabelBondIssuerInfoService;

    @Value("${restfulapi.cacheEnable}")
    private Boolean chdEnable;

    /**
     * 所有bondKey（表：qb_news_label_bond_issuer_info），使用时会赋值，使用完后清除，因为需要保持最新的
     */
    private String allBondKeys;

    /**
     * 上一个工作日，使用时会赋值，使用完后清除，因为需要保持最新的
     */
    private String previousWorkDay;

    /**
     * 初始化缓存
     */
    @PostConstruct
    public void apiDataCacheInit() {
        // 查询数据
        if (chdEnable == null || chdEnable) {
            this.apiDataCacheRefresh(null);
        }
    }


    /**
     * 根据class 以字段注解JSONField的name为key，字段Field为value
     *
     * @param clazz 类
     * @return 结果
     */
    public static Map<String, Field> getClassJsonFieldNames(Class<?> clazz) {
        return Arrays.stream(clazz.getDeclaredFields()).filter(e -> {
            e.setAccessible(true);
            return e.getAnnotation(JSONField.class) != null;
        }).collect(Collectors.toMap(e -> e.getAnnotation(JSONField.class).name(), e -> e));
    }

    public CopyOnWriteArrayList<Object> getCacheList(String key) {
        if (key == null) {
            return null;
        }
        if (CHDApiNameAndDataSourceIdEnum.P_BOND_LIST_INFO.getApiName().equals(key)) {
            return API_CACHE_MAP.get(CHDApiNameAndDataSourceIdEnum.P_BOND_LIST_INFO_CACHED.getApiName());
        } else if (CHDApiNameAndDataSourceIdEnum.BOND2.getApiName().equals(key)) {
            return API_CACHE_MAP.get(CHDApiNameAndDataSourceIdEnum.BOND2_CACHED_FOR_QBNEWS.getApiName());
        }
        return API_CACHE_MAP.get(key);
    }


    /**
     * 刷新缓存
     *
     * @param anEnum 需要缓存的API，为null则拉取全部
     */
    public void apiDataCacheRefresh(CHDApiNameAndDataSourceIdEnum anEnum) {
        log.info("start API cache refresh,apiName:{} ---------------", JSONObject.toJSONString(anEnum));
        this.initConditionParm(anEnum);
        // 先清空缓存，在更新
        if (anEnum == null) {
            API_CACHE_MAP.clear();
            Semaphore semaphore = new Semaphore(0);
            List<CHDApiNameAndDataSourceIdEnum> collect = Arrays.stream(CHDApiNameAndDataSourceIdEnum.values()).filter(CHDApiNameAndDataSourceIdEnum::getCacheEnable).collect(Collectors.toList());
            int threadSize = collect.size();
            ExecutorService pool = Executors.newFixedThreadPool(threadSize);
            try {
                for (CHDApiNameAndDataSourceIdEnum cacheEnum : collect) {
                    String apiName = cacheEnum.getApiName();
                    pool.execute(() -> {
                        CopyOnWriteArrayList<Object> objects = this.requestAllData(cacheEnum);
                        CopyOnWriteArrayList<Object> objects1 = API_CACHE_MAP.get(apiName);
                        if (objects1 != null) {
                            objects1.addAll(objects);
                        } else {
                            objects1 = objects;
                        }
                        API_CACHE_MAP.put(apiName, objects1);
                        semaphore.release();
                    });
                }
                semaphore.acquire(threadSize);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } finally {
                // 防止发生异常线程无法正常关闭
                pool.shutdownNow();
            }
        } else if (API_CACHE_MAP.containsKey(anEnum.getApiName())) {
            API_CACHE_MAP.get(anEnum.getApiName()).clear();
            API_CACHE_MAP.get(anEnum.getApiName()).addAll(this.requestAllData(anEnum));
        }
        this.cleanConditionParm();
        log.info("end API cache refresh ---------------");
    }

    /**
     * 将所有API数据查询出来(因为每页最多查询5000条，所以循环查询，如果拿到结果集size是0，则自旋 spinNum 次)
     *
     * @param apiEnum API
     */
    private CopyOnWriteArrayList<Object> requestAllData(CHDApiNameAndDataSourceIdEnum apiEnum) {
        //存储数据LIST
        CopyOnWriteArrayList<Object> data = new CopyOnWriteArrayList<>();
        try {
            // 当前数据返回的
            int resultDataSize = 5000;
            int pageSizeMax = 5000;
            int startPage = 1;
            // 没有获取到数据，自旋次数（spinIndex >0  spinIndex--）
            int spinNum = 2;
            int spinIndex = spinNum;
            Class<?> clazz = apiEnum.getClazz();
            // 条件（默认没有，因为是做缓存，需要全部）
            String conditions = this.getConditional(clazz);
            // 需要缓存的字段，以注解JSONField为准
            String[] columns = this.getJsonFieldName(clazz);
            // 循环查询 然后 缓存下来
            while (resultDataSize >= pageSizeMax) {
                List<?> dto = cdhRestfulApiRequestService.requestApi(apiEnum, conditions, startPage, pageSizeMax, clazz, columns);
                int size = dto.size();
                if (size == 0 && spinIndex > 0) {
                    log.info("返回结果集为0，重试剩余次数 {} ", spinIndex);
                    spinIndex--;
                } else if (size == 0 && spinIndex == 0) {
                    resultDataSize = size;
                } else {
                    spinIndex = spinNum;
                    startPage++;
                    resultDataSize = size;
                    data.addAll(dto);
                }
            }
        } catch (Exception e) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("msg", e.getMessage());
            jsonObject.put("StackTrace", e.getStackTrace());
            log.error("msg:{}", jsonObject);
        }
        return data;
    }


    /**
     * 获取类所有JsonFiel注解的name
     *
     * @param clazz 类
     * @return 结果
     */
    private String[] getJsonFieldName(Class<?> clazz) {
        List<String> list = new ArrayList<>();
        Field[] fields = clazz.getDeclaredFields();
        for (Field field : fields) {
            field.setAccessible(true);
            JSONField jsonField = field.getAnnotation(JSONField.class);
            if (jsonField != null) {
                String name = jsonField.name();
                list.add(name);
            }
        }
        return list.toArray(new String[0]);
    }


    /**
     * 获取不同接口的条件
     *
     * @param clazz 接口类型
     * @return 字符串
     */
    private String getConditional(Class<?> clazz) {
        //查询条件
        String conditions = "";
        //判断当前api接口，拼接不同的查询条件
        if (QbwebLiqudityStatisticIssuerScoreDTO.class.equals(clazz)) {
            conditions = String.format("statisticDate = '%s'", previousWorkDay);
        } else if (SdbCdcBondValuationDTO.class.equals(clazz)) {
            conditions = String.format("statisticDate = '%s' and bondKey in (%s)", previousWorkDay, allBondKeys);
        } else if (CdcBondValuationDTO.class.equals(clazz)) {
            //中债和中债接口，日期格式为yyyyMMdd
            conditions = String.format("Valuate_Date = '%s' and Bond_Key in (%s)", previousWorkDay.replace("-", ""), allBondKeys);
        } else if (CsiBondValuationDTO.class.equals(clazz)) {
            //中债和中债接口，日期格式为yyyyMMdd
            conditions = String.format("Date = '%s' and Bond_Key in (%s)", previousWorkDay.replace("-", ""), allBondKeys);
        } else if (SdnBondDealEodHistoryDTO.class.equals(clazz)) {
            // 3M 债券成交数据
            LocalDateTime end = LocalDateTime.now();
            LocalDateTime start = end.minusMonths(3L);
            conditions = String.format("DealStatus != 2 and MarketDataTime >= gmtime(%s) and MarketDataTime < gmtime(%s) and TradeMethod in (%s,%s,%s) and ContributorID != 'SPBK'",
                    start.format(LocalDateTimeUtils.DATE_TIME_FORMATTER1),
                    end.format(LocalDateTimeUtils.DATE_TIME_FORMATTER1),
                    BondTradeMethodEnum.GVN.getKey(),
                    BondTradeMethodEnum.TKN.getKey(),
                    BondTradeMethodEnum.TRD.getKey());
        }
        return conditions;
    }


    /**
     * 初始化条件参数(考虑到很多API使用重复的参数，初始化一次就好)
     *
     * @param anEnum 对应的API
     */
    private void initConditionParm(CHDApiNameAndDataSourceIdEnum anEnum) {
        if (anEnum != null
                && !CHDApiNameAndDataSourceIdEnum.QBWEB_LIQUDITY_STATISTIC_ISSUER_SCORE.equals(anEnum)
                && !CHDApiNameAndDataSourceIdEnum.QBWEB_LIQUDITY_STATISTIC_BOND.equals(anEnum)
                && !CHDApiNameAndDataSourceIdEnum.CDC_BOND_VALUATION.equals(anEnum)
                && !CHDApiNameAndDataSourceIdEnum.CSI_BOND_VALUATION.equals(anEnum)) {
            return;
        }
        if (StringUtils.isBlank(allBondKeys)) {
            //查询数据库债卷标签发行人表格全表数据
            QueryWrapper<QbNewsLabelBondIssuerInfo> query = new QueryWrapper<>();
            query.select("bond_key");
            //所有债券标签bond_key值集合
            List<QbNewsLabelBondIssuerInfo> list = qbNewsLabelBondIssuerInfoService.list(query);
            //拼接bond_key值
            allBondKeys = list.stream().map(QbNewsLabelBondIssuerInfo::getBondKey).collect(Collectors.joining("','", "'", "'"));
        }
        if (StringUtils.isBlank(previousWorkDay)) {
            // 获取工作日
            List<LocalDate> workDays = cdhRestfulApiRequestService.requestApi(CHDApiNameAndDataSourceIdEnum.QBPRO_RECENT_NTH_WORKDAYS_CIB, "", 1, 2, RecentNthWorkdaysDTO.class, "")
                    .stream().map(e -> LocalDate.parse(e.getRecentNthWorkday(), DateTimeFormatter.ofPattern("yyyyMMdd"))).collect(Collectors.toList());
            LocalDate date = LocalDate.now().minusDays(1L);
            log.info("start get previousWorkDay");
            while (!CollectionUtils.isEmpty(workDays) && !workDays.contains(date)) {
                date = date.minusDays(1L);
            }
            previousWorkDay = date.toString();
            log.info("end get previousWorkDay,previousWorkDay={}", previousWorkDay);
        }
    }

    /**
     * 清除条件参数
     */
    private void cleanConditionParm() {
        previousWorkDay = "";
        allBondKeys = "";
    }
}
