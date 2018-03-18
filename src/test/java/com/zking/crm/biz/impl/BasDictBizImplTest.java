package com.zking.crm.biz.impl;

import com.zking.crm.biz.IBasDictBiz;
import com.zking.crm.model.BasDict;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class BasDictBizImplTest extends BaseTest {

    @Autowired
    private IBasDictBiz basDictBiz;
    private BasDict basDict;

    @Before
    public void setUp() throws Exception {
        basDict=new BasDict();
    }

    @Test
    public void addBasDict() throws Exception {
        basDict.setDictType("地区");
        basDict.setDictItem("华西");
        basDict.setDictValue("8");
        basDictBiz.addBasDict(basDict);
    }
    @Test
    public void getDict() throws Exception {
        basDict.setDictType("企业客户等级");
        basDictBiz.getDic(basDict);
    }

    @Test
    public void getDictVal() throws Exception {
        basDict.setDictType("地区");
        basDict.setDictValue("2");
        BasDict list=basDictBiz.getDictVal(basDict);
        System.out.println(list);
    }

    @Test
    public void edit() throws Exception {

        basDict.setDictType("山地");
        basDict.setDictItem("华西系");
        basDict.setDictValue("9");
        basDict.setDictIsEditable(true);
        basDict.setDictId(3l);
        basDictBiz.edit(basDict);
    }

    @Test
    public void del() throws Exception {
        basDictBiz.delBasDict(2l);
    }

    @Test
    public void load() throws Exception {
        BasDict sc = basDictBiz.load(3L);
        System.out.println(sc);
    }

    @Test
    public void listBasDict() throws Exception {
        List<BasDict> list= basDictBiz.listBasDict(basDict,null);
        for (BasDict b:list){
            System.out.println(b);
        }
    }
}