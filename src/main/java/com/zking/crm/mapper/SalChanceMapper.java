package com.zking.crm.mapper;

import com.zking.crm.model.SalChance;
import org.springframework.stereotype.Repository;

@Repository
public interface SalChanceMapper {
    int deleteByPrimaryKey(Long chcId);

    int insert(SalChance record);

    int insertSelective(SalChance record);

    SalChance selectByPrimaryKey(Long chcId);

    int updateByPrimaryKeySelective(SalChance record);

    int updateByPrimaryKey(SalChance record);
}