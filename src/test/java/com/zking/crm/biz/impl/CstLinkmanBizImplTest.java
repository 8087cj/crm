package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstLinkmanBiz;
import com.zking.crm.model.CstLinkman;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class CstLinkmanBizImplTest extends BaseTest {

    @Autowired
    private ICstLinkmanBiz cstLinkmanBiz;

    private CstLinkman cstLinkman;

    @Override
    public void setUp() throws Exception {
        cstLinkman=new CstLinkman();
    }

    @Test
    public void addCstLinkman() throws Exception {
//        客户编号:外键 cst_customer(cust_no)，lkm_cust_no
//        客户名称，lkm_cust_name
//        联系人名字，lkm_name
//        办公电话，lkm_tel
        cstLinkman.setLkmCustNo("KH_yyyyMMdd_00004");
        cstLinkman.setLkmCustName("睿智电脑");
        cstLinkman.setLkmName("吴铮");
        cstLinkman.setLkmTel("13212690333");
        cstLinkmanBiz.addCstLinkman(cstLinkman);
    }

}