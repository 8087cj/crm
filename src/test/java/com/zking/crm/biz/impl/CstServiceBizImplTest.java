package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstServiceBiz;
import com.zking.crm.model.CstService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class CstServiceBizImplTest extends BaseTest {

    @Autowired
    private ICstServiceBiz cstServiceBiz;

    private CstService cstService;

    @Before
    public void setUp() throws Exception {
        cstService=new CstService();
    }

    @Test
    public void listSvrType() throws Exception {
        cstService.setSvrCreateBy("2017");
        List<CstService> cstServices = cstServiceBiz.listSvrType(cstService);
        for(CstService s:cstServices){
            System.out.println(s);
        }
    }

    @Test
    public void listCreateYear() throws Exception {
        List<CstService> cstServices = cstServiceBiz.listCreateYear();
        for(CstService s:cstServices){
            System.out.println(s);
        }
    }



}