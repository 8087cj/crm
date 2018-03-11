package com.zking.crm.mapper;

import com.zking.crm.model.OrdersLine;
import org.springframework.stereotype.Repository;

@Repository
public interface OrdersLineMapper {
    int deleteByPrimaryKey(Long oddId);

    int insert(OrdersLine record);

    int insertSelective(OrdersLine record);

    OrdersLine selectByPrimaryKey(Long oddId);

    int updateByPrimaryKeySelective(OrdersLine record);

    int updateByPrimaryKey(OrdersLine record);
}