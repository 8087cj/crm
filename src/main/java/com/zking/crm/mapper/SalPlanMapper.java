package com.zking.crm.mapper;

import com.zking.crm.model.SalPlan;
import org.springframework.stereotype.Repository;

@Repository
public interface SalPlanMapper {
    int deleteByPrimaryKey(Long plaId);

    int insert(SalPlan record);

    int insertSelective(SalPlan record);

    SalPlan selectByPrimaryKey(Long plaId);

    int updateByPrimaryKeySelective(SalPlan record);

    int updateByPrimaryKey(SalPlan record);
}