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
    public void deletSalChancee() throws Exception {
    }

    @Test
    public void addSalChance() throws Exception {
//        chc_source nvarchar(50), -- 机会来源
//        chc_cust_name nvarchar(100) not null, -- 客户名称
//        chc_title nvarchar(200) not null, -- 概要
//        chc_rate int not null, -- 成功几率
//        chc_linkman nvarchar(50), -- 联系人
//        chc_tel	 nvarchar(50), -- 联系人电话
//        chc_desc nvarchar(2000) not null, -- 机会描述
//        chc_create_id bigint not null, -- 创建人ID: 引用sys_user(usr_id)
//        chc_create_by nvarchar(50) not null, -- 创建人名字
//        chc_create_date TIMESTAMP null DEFAULT CURRENT_TIMESTAMP,-- 创建人日期时间
//        values('朋友推荐','睿智数码','采购笔记本电脑意向',90,'吴铮','13212690333','...',1,'陈娟');
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