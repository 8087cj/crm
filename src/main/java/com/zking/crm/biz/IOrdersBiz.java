package com.zking.crm.biz;

import com.zking.crm.model.Orders;

import java.util.List;

public interface IOrdersBiz {
    List<Orders> listOrdersNameAndMoney(Orders record);

    List<Orders> listOrdersYear();
}
