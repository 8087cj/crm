package com.zking.crm.mapper;

import com.zking.crm.model.CstService;
import org.springframework.stereotype.Repository;

@Repository
public interface CstServiceMapper {
    int deleteByPrimaryKey(Long svrId);

    int insert(CstService record);

    int insertSelective(CstService record);

    CstService selectByPrimaryKey(Long svrId);

    int updateByPrimaryKeySelective(CstService record);

    int updateByPrimaryKey(CstService record);
}