package com.zking.crm.mapper;

import com.zking.crm.model.SalPlan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SalPlanMapper {
    int deleteByPrimaryKey(Long plaId);

    int insert(SalPlan record);

    int insertSelective(SalPlan record);

    SalPlan selectByPrimaryKey(Long plaId);

    int updateByPrimaryKeySelective(SalPlan record);

    int updateByPrimaryKey(SalPlan record);

    //得到指定销售机会的客户开发机会
    List<SalPlan> listByChcId(SalPlan record);

    //执行计划(就是增加计划执行结果)
    int plan(SalPlan record);

}