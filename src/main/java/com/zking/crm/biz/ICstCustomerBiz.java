package com.zking.crm.biz;

import com.zking.crm.model.CstCustomer;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface ICstCustomerBiz {

    void addCstCustomer(CstCustomer record);

    void edit(CstCustomer CstCustomer);

    void delCstCustomer(String custNo);

    CstCustomer load(String custNo);

    List<CstCustomer> listCstCustomer(CstCustomer CstCustomer, PageBean pageBen);

    int getCstCustomerCount();

    List<CstCustomer> listCstCustomerNameAndCount(CstCustomer record);

}
