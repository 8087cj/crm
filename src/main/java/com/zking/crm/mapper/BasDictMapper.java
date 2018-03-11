package com.zking.crm.mapper;

import com.zking.crm.model.BasDict;
import org.springframework.stereotype.Repository;

@Repository
public interface BasDictMapper {
    int deleteByPrimaryKey(Long dictId);

    int insert(BasDict record);

    int insertSelective(BasDict record);

    BasDict selectByPrimaryKey(Long dictId);

    int updateByPrimaryKeySelective(BasDict record);

    int updateByPrimaryKey(BasDict record);
}