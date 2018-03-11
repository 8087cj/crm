package com.zking.crm.mapper;

import com.zking.crm.model.Product;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductMapper {
    int deleteByPrimaryKey(Long prodId);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Long prodId);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);
}