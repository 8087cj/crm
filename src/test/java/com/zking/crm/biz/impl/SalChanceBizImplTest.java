package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.model.SalChance;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.SQLClientInfoException;
import java.util.List;

import static org.junit.Assert.*;

public class SalChanceBizImplTest extends BaseTest{
    
    @Autowired
    private ISalChanceBiz salChanceBiz;
    
    private SalChance salChance;
    
    @Before
    public void setUp() throws Exception {
        salChance=new SalChance();
    }

    @Test
    public int deletSalChancee() throws Exception {
       return salChanceBiz.deletSalChancee(4l);
    }

    @Test
    public void addSalChance() throws Exception {

        salChance.setChcSource("朋友推荐");
        salChance.setChcCustName("睿智数码4");
        salChance.setChcTitle("采购笔记本电脑意向44");
        salChance.setChcRate(77);
        salChance.setChcLinkman("吴铮");
        salChance.setChcTel("13212690333");
        salChance.setChcDesc("111");
        salChance.setChcCreateId(1l);
        salChance.setChcCreateBy("陈娟");
        salChanceBiz.addSalChance(salChance);
    }

    @Test
    public void loadSalChance() throws Exception {
    }

    @Test
    public void editSalChance() throws Exception {
        salChance.setChcId(1l);
        salChance.setChcSource("朋友推荐");
        salChance.setChcCustName("睿智数码4");
        salChance.setChcTitle("采购笔记本电脑意向44");
        salChance.setChcRate(77);
        salChance.setChcLinkman("吴铮");
        salChance.setChcTel("13212690333");
        salChance.setChcDesc("111");
        salChance.setChcCreateId(1l);
        salChance.setChcCreateBy("陈娟");
        salChanceBiz.editSalChance(salChance);
    }

    @Test
    public void listSalChance() throws Exception {
        List<SalChance> salChances = salChanceBiz.listSalChance(salChance, null);
        for(SalChance sc:salChances){
            System.out.println(sc);
        }
    }

    @Test
    public void listAllSalChance() throws Exception {
    }

    @Test
    public void dispatch() throws Exception {
    }

    @Test
    public void updateStatus() throws Exception {
    }

    @Test
    public void loadSalChanceTop() throws Exception {
        SalChance sc = salChanceBiz.loadSalChanceTop(1l);
        System.out.println(sc);
    }

}