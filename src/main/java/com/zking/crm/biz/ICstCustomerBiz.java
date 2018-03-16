package com.zking.crm.biz;

import com.zking.crm.model.CstCustomer;

public interface ICstCustomerBiz {

    void addCstCustomer(CstCustomer record);

    int getCstCustomerCount();

}
