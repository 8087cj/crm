package com.zking.crm.biz.impl;

import com.zking.crm.biz.IOrdersBiz;
import com.zking.crm.model.Orders;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class OrdersBizImplTest extends BaseTest {

    @Autowired
    private IOrdersBiz ordersBiz;

    private Orders orders;

    @Before
    public void setUp() throws Exception {
        orders=new Orders();
    }

    @Test
    public void listOrdersNameAndMoney() throws Exception {
        orders.setOdrAddr("2017");
        List<Orders> orderss = ordersBiz.listOrdersNameAndMoney(orders);
        for(Orders o:orderss){
            System.out.println(o);
        }
    }

    @Test
    public void listOrdersYear() throws Exception {
        List<Orders> orders = ordersBiz.listOrdersYear();
        for(Orders o:orders){
            System.out.println(o);
        }
    }

}