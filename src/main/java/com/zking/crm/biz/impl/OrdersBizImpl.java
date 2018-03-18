package com.zking.crm.biz.impl;

import com.zking.crm.biz.IOrdersBiz;
import com.zking.crm.mapper.OrdersLineMapper;
import com.zking.crm.mapper.OrdersMapper;
import com.zking.crm.model.Orders;
import com.zking.crm.model.OrdersLine;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersBizImpl implements IOrdersBiz {

    @Autowired
    private OrdersMapper ordersMapper;

    @Autowired
    private OrdersLineMapper ordersLineMapper;

    @Override
    public List<Orders> listOrdersNameAndMoney(Orders record) {
        return ordersMapper.listOrdersNameAndMoney(record);
    }

    @Override
    public List<Orders> listOrdersYear() {
        return ordersMapper.listOrdersYear();
    }

    @Override
    public List<Orders> listOrdersByCustomer(Orders record, PageBean pageBean) {
        return ordersMapper.listOrdersByCustomer(record);
    }

    @Override
    public List<OrdersLine> listOrdersLineByOrder(OrdersLine record, PageBean pageBean) {
        return ordersLineMapper.listOrdersLineByOrder(record);
    }

    @Override
    public Orders loadOrders(Long odrId) {
        return ordersMapper.selectByPrimaryKey(odrId);
    }

    @Override
    public OrdersLine getSumPrice(OrdersLine record) {
        return ordersLineMapper.getSumPrice(record);
    }

}
