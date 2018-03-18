package com.zking.crm.biz;

import com.zking.crm.model.Orders;
import com.zking.crm.model.OrdersLine;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface IOrdersBiz {
    List<Orders> listOrdersNameAndMoney(Orders record);

    List<Orders> listOrdersYear();

    List<Orders> listOrdersByCustomer(Orders record, PageBean pageBean);

    List<OrdersLine> listOrdersLineByOrder(OrdersLine record, PageBean pageBean);

    Orders loadOrders(Long odrId);

    OrdersLine getSumPrice(OrdersLine record);

}
