package com.zking.crm.biz.impl;

import com.zking.crm.biz.IBasDictBiz;
import com.zking.crm.biz.IProductBiz;
import com.zking.crm.model.Product;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class ProductBizImplTest extends BaseTest {

    @Autowired
    private IProductBiz productBiz;

    private Product product;

    @Before
    public void setUp() throws Exception {
        product=new Product();
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
    public void listProduct() throws Exception {
        List<Product> list= productBiz.listProduct(product,null);
        for (Product b:list){
            System.out.println(b);
        }
    }

    @Test
    public void listProductName() throws Exception {
        List<Product> list= productBiz.listProductName(product);
        for (Product b:list){
            System.out.println(b);
        }
    }

}