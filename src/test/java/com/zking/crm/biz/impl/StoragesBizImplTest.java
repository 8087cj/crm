package com.zking.crm.biz.impl;

import com.zking.crm.biz.IStoragesBiz;
import com.zking.crm.model.Storages;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class StoragesBizImplTest extends BaseTest {

    @Autowired
    private IStoragesBiz  storagesBiz;

    private Storages storages;

    @Before
    public void setUp() throws Exception {
    }

    @Test
    public void addProduct() throws Exception {
    }

    @Test
    public void edit() throws Exception {
    }

    @Test
    public void delProduct() throws Exception {
    }

    @Test
    public void load() throws Exception {
    }

    @Test
    public void liststorages() throws Exception {
        List<Storages> list=storagesBiz.liststorages(storages,null);
        for(Storages s:list){
            System.out.println(s);
        }
    }

}