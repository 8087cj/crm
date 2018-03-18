package com.zking.crm.biz.impl;

import com.zking.crm.biz.IProductBiz;
import com.zking.crm.mapper.ProductMapper;
import com.zking.crm.model.BasDict;
import com.zking.crm.model.Product;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductBizImpl implements IProductBiz {

    @Autowired
    private ProductMapper ProductMapper;


    @Override
    public void addProduct(Product Product) {

    }

    @Override
    public void edit(Product Product) {

    }

    @Override
    public void delProduct(Long dictId) {

    }

    @Override
    public BasDict load(Long dictId) {
        return null;
    }

    @Override
    public List<Product> listProduct(Product Product, PageBean pageBen) {
        return ProductMapper.listProduct(Product);
    }

    @Override
    public List<Product> listProductName(Product product) {
        return ProductMapper.listProductName(product);
    }
}
