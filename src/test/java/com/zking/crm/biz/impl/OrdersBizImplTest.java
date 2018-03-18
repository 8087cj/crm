package com.zking.crm.biz.impl;

import com.zking.crm.biz.IOrdersBiz;
import com.zking.crm.model.Orders;
import com.zking.crm.model.OrdersLine;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class OrdersBizImplTest extends BaseTest {

    @Autowired
    private IOrdersBiz ordersBiz;

    private Orders orders;
    private OrdersLine ordersLine;

    @Before
    public void setUp() throws Exception {
        orders = new Orders();
        ordersLine = new OrdersLine();
    }

    @Test
    public void listOrdersNameAndMoney() throws Exception {
        orders.setOdrAddr("2017");
        List<Orders> orderss = ordersBiz.listOrdersNameAndMoney(orders);
        for (Orders o : orderss) {
            System.out.println(o);
        }
    }

    @Test
    public void listOrdersYear() throws Exception {
        List<Orders> orders = ordersBiz.listOrdersYear();
        for (Orders o : orders) {
            System.out.println(o);
        }
    }

    @Test
    public void listOrdersByCustomer() throws Exception {
        orders.setOdrCustomer("进口零食");
        List<Orders> ordersList = ordersBiz.listOrdersByCustomer(orders, null);
        for (Orders o : ordersList) {
            System.out.println(o);
        }
    }

    @Test
    public void listOrdersLineByOrder() throws Exception {
        ordersLine.setOddOrderId(6l);
        List<OrdersLine> ordersList = ordersBiz.listOrdersLineByOrder(ordersLine, null);
        for (OrdersLine o : ordersList) {
            System.out.println(o);
        }
    }

    @Test
    public void loadOrders() throws Exception {
        Orders orders = ordersBiz.loadOrders(1l);
        if(orders.getOdrStatus()==false){
            orders.setStatusWZ("未回款");
        }else if(orders.getOdrStatus()==true){
            orders.setStatusWZ("已回款");
        }
        ordersLine.setOddOrderId(1l);
        OrdersLine sumPrice = ordersBiz.getSumPrice(ordersLine);
        orders.setSumsProce(sumPrice.getOddPrice());
        System.out.println(orders);
    }



}