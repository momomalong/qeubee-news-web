package com.pats.qeubeenewsweb.schedule;

import com.pats.qeubeenewsweb.consts.TreadExecutorConfigConst;
import com.pats.qeubeenewsweb.entity.dto.EformDTO;
import com.pats.qeubeenewsweb.service.ISpiderFileCategoryService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.concurrent.ConcurrentHashMap;

/**
 * 定时更新风险类型数据
 *
 * @author Hzy
 * @version 1.0.0
 * @since 2021/1/8
 */
@Slf4j
@Component
public class RiskSchedule {

    @Autowired
    ISpiderFileCategoryService spiderFileCategoryService;

    @Autowired
    private EformDTO eformDTO;

    /**
     * 更新risk缓存数据
     */
    @Async(TreadExecutorConfigConst.THREAD_POOL_NAME_SCHEDULE)
    @Scheduled(cron = "0 30 5 * * ?")
    public void refreshRiskCache() {
        log.info("准备执行【更新risk缓存】 定时任务");
        long l = System.currentTimeMillis();
        //清空数据
        ConcurrentHashMap<String, String> map = eformDTO.getMap();
        map.clear();
        //获取最新数据
        EformDTO eform = spiderFileCategoryService.findName();
        log.info("结果：{}", eform);
        //从新指定新数据
        map.putAll(eform.getMap());
        eformDTO.getCodeName().set(eform.getCodeName().get());
        log.info("结束执行【更新risk缓存】 定时任务，用时：{}", System.currentTimeMillis() - l);
    }
}
