package com.zking.crm.biz.impl;

import com.zking.crm.biz.IOrdersBiz;
import com.zking.crm.mapper.OrdersMapper;
import com.zking.crm.model.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersBizImpl implements IOrdersBiz {

    @Autowired
    private OrdersMapper ordersMapper;

    @Override
    public List<Orders> listOrdersNameAndMoney(Orders record) {
        return ordersMapper.listOrdersNameAndMoney(record);
    }

    @Override
    public List<Orders> listOrdersYear() {
        return ordersMapper.listOrdersYear();
    }
}
