package com.zking.crm.mapper;

import com.zking.crm.model.Storages;
import org.springframework.stereotype.Repository;

@Repository
public interface StoragesMapper {
    int deleteByPrimaryKey(Long stkId);

    int insert(Storages record);

    int insertSelective(Storages record);

    Storages selectByPrimaryKey(Long stkId);

    int updateByPrimaryKeySelective(Storages record);

    int updateByPrimaryKey(Storages record);
}