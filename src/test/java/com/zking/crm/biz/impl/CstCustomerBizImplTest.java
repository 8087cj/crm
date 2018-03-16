package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstCustomerBiz;
import com.zking.crm.model.CstCustomer;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class CstCustomerBizImplTest extends BaseTest {

    @Autowired
    private ICstCustomerBiz cstCustomerBiz;

    private CstCustomer cstCustomer;

    @Before
    public void setUp() throws Exception {
        cstCustomer=new CstCustomer();
    }

    @Test
    public void addCstCustomer() throws Exception {
//        客户名称，cust_name
//        客户经理ID，cust_manager_id
//        客户经理名字，cust_manager_name
//        KH_yyyyMMdd_00000
        int count = cstCustomerBiz.getCstCustomerCount();
        int cc=count+1;
        cstCustomer.setCustNo("KH_yyyyMMdd_0000"+cc);
        cstCustomer.setCustName("睿智电脑");
        cstCustomer.setCustManagerId(8l);
        cstCustomer.setCustManagerName("妞妞");
        cstCustomerBiz.addCstCustomer(cstCustomer);

        System.out.println("no:"+cstCustomer.getCustNo());


    }

}