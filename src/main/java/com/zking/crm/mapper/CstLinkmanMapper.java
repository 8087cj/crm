package com.zking.crm.mapper;

import com.zking.crm.model.CstLinkman;
import org.springframework.stereotype.Repository;

@Repository
public interface CstLinkmanMapper {
    int deleteByPrimaryKey(Long lkmId);

    int insert(CstLinkman record);

    int insertSelective(CstLinkman record);

    CstLinkman selectByPrimaryKey(Long lkmId);

    int updateByPrimaryKeySelective(CstLinkman record);

    int updateByPrimaryKey(CstLinkman record);
}