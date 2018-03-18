package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstLostBiz;
import com.zking.crm.model.CstLost;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class CstLostBizImplTest extends BaseTest {

    @Autowired
    private ICstLostBiz cstLostBiz;

    private CstLost cstLost;

    @Before
    public void setUp() throws Exception {
        cstLost = new CstLost();
    }

    @Test
    public void listCstLostTrue() throws Exception {
        cstLost.setLstCustName("2");
        List<CstLost> cstLosts = cstLostBiz.listCstLostTrue(cstLost, null);
        for (CstLost cl : cstLosts) {
            System.out.println(cl);
        }
    }

    @Test
    public void listCstLost() throws Exception {
        cstLost.setLstStatus(3);
        List<CstLost> cstLosts = cstLostBiz.listCstLost(cstLost, null);
        for (CstLost cl : cstLosts) {
            System.out.println(cl);
        }
    }

    @Test
    public void delay() throws Exception {
        CstLost cl = cstLostBiz.loadCstLost(4l);
        cstLost.setLstId(4l);
        if (cl.getLstDelay() != null) {
            cstLost.setLstDelay(cl.getLstDelay() + "333" + ".");
        }else{
            cstLost.setLstDelay( "333" + ".");
        }
        cstLostBiz.delay(cstLost);

    }

}