package com.zking.crm.biz;

import com.zking.crm.model.CstCustomer;

import java.util.List;

public interface ICstCustomerBiz {

    void addCstCustomer(CstCustomer record);

    int getCstCustomerCount();

    List<CstCustomer> listCstCustomerNameAndCount(CstCustomer record);

}
