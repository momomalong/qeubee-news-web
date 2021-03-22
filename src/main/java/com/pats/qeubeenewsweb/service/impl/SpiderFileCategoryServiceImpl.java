package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pats.qeubeenewsweb.annotation.DataSource;
import com.pats.qeubeenewsweb.entity.SpiderFileCategory;
import com.pats.qeubeenewsweb.entity.dto.EformDTO;
import com.pats.qeubeenewsweb.entity.dto.SpiderFileCategoryDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.SpBulletinThreeTypeDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.SpBulletinTwoTypeDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.SpBulletinTypeDTO;
import com.pats.qeubeenewsweb.mapper.SpiderFileCategoryMapper;
import com.pats.qeubeenewsweb.service.ISpiderFileCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author Hzy
 * @since 2021-01-08
 */
@Service
public class SpiderFileCategoryServiceImpl extends ServiceImpl<SpiderFileCategoryMapper, SpiderFileCategory> implements ISpiderFileCategoryService {

    @Autowired
    private SpiderFileCategoryMapper categoryMapper;

    @Override
    @DataSource(dataSourceName = "eform")
    public EformDTO findName() {
        QueryWrapper<SpiderFileCategory> query = new QueryWrapper<>();
        query.select("code,name");
        List<SpiderFileCategory> list = super.list(query);
        //返回的结果对象
        EformDTO eformDTO = new EformDTO();
        //存储风险标签集
        Map<String, String> map = new HashMap<>(128);
        //将集合内容转化为相应的map集合
        for (SpiderFileCategory spiderFileCategory : list) {
            //获取code值
            String code = spiderFileCategory.getCode();
            //如果code值为null的清空下,则创建一个uuid值作为key,并将其保存到EformDTO中codeKey属性上
            if (code == null) {
                eformDTO.getCodeName().set(spiderFileCategory.getName());
                continue;
            }
            map.put(code, spiderFileCategory.getName());
        }
        //给EformDTO设置风险标签值
        eformDTO.getMap().putAll(map);
        return eformDTO;
    }

    @Override
    @DataSource(dataSourceName = "eform")
    public List<SpBulletinTypeDTO> findAllList() {
        List<SpiderFileCategoryDTO> categoryList = categoryMapper.findAllList();
        Map<String, List<SpiderFileCategoryDTO>> collect = categoryList.stream().collect(Collectors.groupingBy(SpiderFileCategoryDTO::getType));
        //一级分类数据
        List<SpiderFileCategoryDTO> oneList = collect.get("1");
        //二级分类数据
        List<SpiderFileCategoryDTO> twoList = collect.get("2");
        //三级分类数据
        List<SpiderFileCategoryDTO> threeList = collect.get("3");
        //返回的实体
        List<SpBulletinTypeDTO> typesList = new ArrayList<>();
        Map<String, List<SpiderFileCategoryDTO>> map;
        //遍历一级分类
        for (SpiderFileCategoryDTO spiderFileCategoryDTO : oneList) {
            //一级分类实体
            SpBulletinTypeDTO oneType = new SpBulletinTypeDTO();
            List<SpBulletinTwoTypeDTO> twoTypesList = new ArrayList<>();
            //一级类型id
            String id = spiderFileCategoryDTO.getId();
            //设置一级code和name值
            oneType.setLevelTypeCode(spiderFileCategoryDTO.getCode());
            oneType.setLevelTypeName(spiderFileCategoryDTO.getName());
            //二级分类以pid分组
            map = twoList.stream().collect(Collectors.groupingBy(SpiderFileCategoryDTO::getPid));
            //获取当前id对应的二级分类集合
            List<SpiderFileCategoryDTO> twoSpiderFileCategory = map.get(id);
            //空表示没有二级分类
            if(CollectionUtils.isEmpty(twoSpiderFileCategory)){
                oneType.setTwoTypes(twoTypesList);
                typesList.add(oneType);
                continue;
            }
            //遍历二级分类
            for (SpiderFileCategoryDTO fileCategoryDTO : twoSpiderFileCategory) {
                //二级分类实体
                SpBulletinTwoTypeDTO twoType = new SpBulletinTwoTypeDTO();
                List<SpBulletinThreeTypeDTO> threeTypesList = new ArrayList<>();
                //获取二级分类id
                String twoId = fileCategoryDTO.getId();
                //设置二级分类code和name值
                twoType.setTwoLevelTypeCode(fileCategoryDTO.getCode());
                twoType.setTwoLevelTypeName(fileCategoryDTO.getName());
                //三级分类以pid分组
                map = threeList.stream().collect(Collectors.groupingBy(SpiderFileCategoryDTO::getPid));
                //获取当前二级id对应的三级分类集合
                List<SpiderFileCategoryDTO> threeSpiderFileCategory = map.get(twoId);
                //空表示没有三级分类
                if(CollectionUtils.isEmpty(threeSpiderFileCategory)){
                    twoType.setThreeTypes(threeTypesList);
                    twoTypesList.add(twoType);
                    continue;
                }
                //遍历三级分类
                for (SpiderFileCategoryDTO categoryDTO : threeSpiderFileCategory) {
                    //三级分类实体
                    SpBulletinThreeTypeDTO threeType = new SpBulletinThreeTypeDTO();
                    //设置三级分类code和name值
                    threeType.setThreeLevelTypeCode(categoryDTO.getCode());
                    threeType.setThreeLevelTypeName(categoryDTO.getName());
                    threeTypesList.add(threeType);
                }
                //将三集分类集合放入二级引用中
                twoType.setThreeTypes(threeTypesList);
                //将二级分类设置到一级实体中
                twoTypesList.add(twoType);
            }
            oneType.setTwoTypes(twoTypesList);
            //将一级分类设置到返回实体集合中
            typesList.add(oneType);
        }
        return typesList;
    }
}
