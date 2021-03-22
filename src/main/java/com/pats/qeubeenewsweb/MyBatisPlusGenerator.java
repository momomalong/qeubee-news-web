package com.pats.qeubeenewsweb;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.converts.MySqlTypeConvert;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

import java.util.HashMap;
import java.util.Map;

/**
 * mybatis-plus代码生成器(用于生成entity)<br>
 * 注意:<br>
 * 因为没用mybatis-plus的Service和Controller所以生成完之后要删掉TTT目录
 *
 * @author mqt
 * @version 1.0.0
 * @date 2020/12/03 12:38
 */
public class MyBatisPlusGenerator {

    /**
     * 开启会导致测试环境不能启动
     */
//    public static void main(String[] args) {
//        startGenerator();
//    }

    /**
     * 按照配置生成文件
     */
    public static void startGenerator() {
        AutoGenerator mpg = new AutoGenerator();

        // 全局配置
        GlobalConfig gc = new GlobalConfig();
        //这里写你自己的java目录
        gc.setOutputDir("C:\\idea_data\\qeubee-news-web\\src\\main\\java");
        gc.setFileOverride(false);
        gc.setActiveRecord(true);
        gc.setEnableCache(false);
        gc.setBaseResultMap(true);
        gc.setBaseColumnList(true);
        gc.setSwagger2(true);
        gc.setAuthor("Hzy");
        mpg.setGlobalConfig(gc);
        // 数据源配置
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setDbType(DbType.MYSQL);
        dsc.setTypeConvert(new MySqlTypeConvert());
        dsc.setDriverName("com.mysql.jdbc.Driver");
        dsc.setUsername("root");
        dsc.setPassword("123456");
        dsc.setUrl("jdbc:mysql://localhost:3306/sumcope.test?characterEncoding=utf8&serverTimezone=UTC&allowMultiQueries=true&useSSL=false");
        mpg.setDataSource(dsc);


        // 策略配置
        StrategyConfig strategy = new StrategyConfig();
//        strategy.setTablePrefix(new String[]{"_"});// 此处可以修改为您的表前缀
        String[] tables = {"qb_news_bulletin_three_type"};
        strategy.setInclude(tables);
        // 表名生成策略
        strategy.setNaming(NamingStrategy.underline_to_camel);
        // 使用Lombok
        strategy.setEntityLombokModel(true);
        strategy.setRestControllerStyle(true);
        strategy.setEntitySerialVersionUID(true);

        strategy.setEntityTableFieldAnnotationEnable(true);
        mpg.setStrategy(strategy);

        // 包配置
        PackageConfig pc = new PackageConfig();
        pc.setParent(null);
        String home = "com.pats.qeubeenewsweb.";
        pc.setEntity(home + "entity");
        pc.setMapper(home + "mapper");
        pc.setXml(home + "mapping");
        pc.setService(home + "service");
        pc.setServiceImpl(home + "service.impl");
        pc.setController(home + "controller");
        mpg.setPackageInfo(pc);

        // 注入自定义配置，可以在 VM 中使用 cfg.abc 设置的值
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {
                Map<String, Object> map = new HashMap<>(4);
                map.put("abc", this.getConfig().getGlobalConfig().getAuthor() + "-mp");
                this.setMap(map);
            }
        };
        mpg.setCfg(cfg);

        // 执行生成
        mpg.execute();

        // 打印注入设置
        System.err.println(mpg.getCfg().getMap().get("abc"));
    }

}