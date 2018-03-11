package com.zking.crm.mapper;

import com.zking.crm.model.Orders;
import org.springframework.stereotype.Repository;

@Repository
public interface OrdersMapper {
    int deleteByPrimaryKey(Long odrId);

    int insert(Orders record);

    int insertSelective(Orders record);

    Orders selectByPrimaryKey(Long odrId);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);
}