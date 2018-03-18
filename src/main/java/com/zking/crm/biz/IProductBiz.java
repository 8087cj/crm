package com.zking.crm.biz;

import com.zking.crm.model.BasDict;
import com.zking.crm.model.Product;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface IProductBiz {

    void addProduct(Product Product);

    void edit(Product Product);

    void delProduct(Long dictId);

    BasDict load(Long dictId);

    List<Product> listProduct(Product Product, PageBean pageBen);

    List<Product> listProductName(Product Product);

}
