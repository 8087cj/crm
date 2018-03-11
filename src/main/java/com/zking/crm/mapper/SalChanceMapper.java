package com.zking.crm.mapper;

import com.zking.crm.model.SalChance;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SalChanceMapper {
    int deleteByPrimaryKey(Long chcId);

    int insert(SalChance record);

    int insertSelective(SalChance record);

    SalChance selectByPrimaryKey(Long chcId);

    int updateByPrimaryKeySelective(SalChance record);

    int updateByPrimaryKey(SalChance record);

    List<SalChance> listSalChance(SalChance record);

    List<SalChance> listAllSalChance(SalChance record);

    //指派销售机会
    int dispatch(SalChance record);

    //修改状态
    int updateStatus(SalChance record);

    //得到销售管理的信息
    SalChance loadSalChanceTop(Long chcId);

}