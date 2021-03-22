package com.pats.qeubeenewsweb.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.pats.qeubeenewsweb.consts.RabbitMQPushMsgTypeConst;
import com.pats.qeubeenewsweb.entity.dto.PageDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinDetailDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinLabelBindSetWebDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinSetDTO;
import com.pats.qeubeenewsweb.entity.dto.bulletin.BulletinPageQueryDTO;
import com.pats.qeubeenewsweb.mq.provider.QeubeeNewsProvider;
import com.pats.qeubeenewsweb.service.BulletinWebService;
import com.pats.qeubeenewsweb.service.transfer.BulletinServiceTransfer;
import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;

/**
 * @author : qintai.ma
 * @since : create in 2020/8/25 11:25
 * @version :1.0.0
 */
@RequiredArgsConstructor
@Service
public class BulletinWebServiceImpl implements BulletinWebService {

    private final BulletinServiceTransfer serviceTransfer;
    
    private final QeubeeNewsProvider qeubeeNewsProvider;
	
    // private final ElasticsearchRestTemplate elasticsearchTemplate;

	/**
	 * 检索分页公告列表 by condition
	 *
	 * @param pageQuery 公告检索条件
	 * @return 当前也公告列表
	 */
	@Override
	public PageDTO<BulletinDTO> findByPage(BulletinPageQueryDTO pageQuery) {
		PageDTO<BulletinDTO> pageDTO = new PageDTO<>();
        // // es索引操作
        // IndexOperations indexOpt = elasticsearchTemplate.indexOps(Bulletin.class);
        // // 索引不存在则检索mysql
        // if(!indexOpt.exists()) {
        IPage<BulletinDTO> result = serviceTransfer.findByPage(pageQuery);
        pageDTO.setRecords(result.getRecords());
        pageDTO.setCurrent(result.getCurrent());
        pageDTO.setSize(result.getSize());
        pageDTO.setTotal(result.getTotal());
        pageDTO.setPages(result.getTotal());
        return pageDTO;
        // }
        // // 构造search 条件
        // BoolQueryBuilder queryBuilder = QueryBuilders.boolQuery();
        // BoolQueryBuilder queryBuilder2 = QueryBuilders.boolQuery();
        // // 合规性条件
        // if(Objects.nonNull(pageQuery.getCompliance())) {
        //     queryBuilder.filter(
        //         QueryBuilders.termQuery(
        //             EntityConst.FIELD_BULLETIN_COMPLIANCE, pageQuery.getCompliance()));
        // }
        // // 以搜索关键字构造搜索条件
        // if(Objects.nonNull(pageQuery.getKeyWord())) {
        //     // 模糊检索 标题、摘要、标签、相关债券字段
        //     queryBuilder.must(
        //         queryBuilder2
        //             .should(
        //                 QueryBuilders.wildcardQuery(
        //                     ElasticsearchModelConst.FIELD_TITLE_KEYWORD, "*" + pageQuery.getKeyWord() + "*"))
        //             .should(
        //                 QueryBuilders.wildcardQuery(
        //                     ElasticsearchModelConst.FIELD_MAIN_BODY_KEYWORD, "*" + pageQuery.getKeyWord() + "*"))
        //             .should(
        //                 QueryBuilders.wildcardQuery(
        //                     ElasticsearchModelConst.FIELD_REFER_BOND_KEYWORD, "*" + pageQuery.getKeyWord() + "*"))
        //             .should(
        //                 QueryBuilders.wildcardQuery(
        //                     ElasticsearchModelConst.FIELD_LABEL_NAME, "*" + pageQuery.getKeyWord() + "*"))
        //         );
        // }
        // // 以筛选label为条件
        // if(Objects.nonNull(pageQuery.getLabel())) {
        //     queryBuilder.filter(QueryBuilders.termsQuery(ElasticsearchModelConst.FIELD_LABEL_ID, pageQuery.getLabel()));
        // }
        // NativeSearchQueryBuilder searchQuery = new NativeSearchQueryBuilder();
        // searchQuery.withQuery(queryBuilder);
        // // 设置分页
        // Pageable pageable = PageRequest.of(
        //     pageQuery.getPageNum() - 1, 
        //     pageQuery.getDataCount());
        // // 设置分页条件
        // searchQuery.withPageable(pageable);
        // // 设置排序条件
        // if(pageQuery.isSort()) {
        //     pageQuery.getSortInfo().stream().forEach(sort -> {
        //         searchQuery.withSort(
        //             SortBuilders.fieldSort(sort.getSortCol())
        //                 .order(
        //                     sort.isDirection() ? SortOrder.ASC : SortOrder.DESC));
        //     });
        // }
        // // 检索
        // SearchHits<Bulletin> searchHits = elasticsearchTemplate.search(
        //     searchQuery.build(), Bulletin.class, IndexCoordinates.of(ElasticsearchModelConst.INDEX_BULLETIN));
        // // 获取结果集
        // List<Bulletin> bulletins = searchHits.get().map(e -> e.getContent()).collect(Collectors.toList());
        
        // pageDTO.setRecords(bulletins);
        // pageDTO.setCurrent((long)pageQuery.getPageNum());
        // pageDTO.setSize((long)pageQuery.getDataCount());
        // pageDTO.setTotal(searchHits.getTotalHits());
        // // 计算分页结果
        // pageDTO.setPages(
        //     searchHits.getTotalHits() % pageQuery.getDataCount() == 0 
        //         ? searchHits.getTotalHits() / pageQuery.getDataCount() 
        //         : searchHits.getTotalHits() / pageQuery.getDataCount() + 1);

        // return pageDTO;
	}

	/**
	 * 检索公告详情 by id
	 *
	 * @param id 公告id
	 * @return 公告详情
	 */
	@Override
	public BulletinDetailDTO findById(Integer id) {
		return serviceTransfer.findById(id);
	}

	/**
	 * 公告合规设置
	 *
	 * @param bulletinnSetDTO 合规设置参数
	 * @return 公告id
	 */
	@Override
	public Boolean modifyCompliance(BulletinSetDTO bulletinSetDTO) {
		return serviceTransfer.modifyCompliance(bulletinSetDTO);
	}

	/**
	 * 公告标签绑定
	 *
	 * @param labelBindSetDTO 绑定标签参数
	 * @return 公告id
	 */
	@Override
	public Boolean addLabels(BulletinLabelBindSetWebDTO labelBindSetDTO) {
		return serviceTransfer.addLabels(labelBindSetDTO);
	}

	/**
	 * 公告标签移除
	 *
	 * @param labelBindSetDTO
	 * @return
	 */
	@Override
	public Boolean removeLabels(BulletinLabelBindSetWebDTO labelBindSetDTO) {
        Boolean result = serviceTransfer.removeLabels(labelBindSetDTO);
        if (result) {
            // 向前端推送消息
            qeubeeNewsProvider.pushToFront(labelBindSetDTO.getId(), RabbitMQPushMsgTypeConst.MQ_MSG_TYPE_BULLETIN_COMPLIANCE);
        }
		return result;
	}

}
