package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISalPlanBiz;
import com.zking.crm.model.SalPlan;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class SalPlanBizImplTest extends BaseTest {

    @Autowired
    private ISalPlanBiz salPlanBiz;

    private SalPlan salPlan;

    @Before
    public void setUp() throws Exception {
        salPlan=new SalPlan();
    }

    @Test
    public void listByChcId() throws Exception {
        salPlan.setPlaChcId(26l);
        List<SalPlan> salPlans = salPlanBiz.listByChcId(salPlan,null);
        for(SalPlan s:salPlans){
            System.out.println(s);
        }
    }

    @Test
    public void plan() throws Exception {
        salPlan.setPlaId(5l);
        salPlan.setPlaResult("ok");
        salPlanBiz.plan(salPlan);
    }

}