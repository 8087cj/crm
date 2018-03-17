package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstCustomerBiz;
import com.zking.crm.mapper.CstCustomerMapper;
import com.zking.crm.model.CstCustomer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CstCustomerBizImpl implements ICstCustomerBiz {

    @Autowired
    private CstCustomerMapper cstCustomerMapper;

    @Override
    public void addCstCustomer(CstCustomer record) {
        cstCustomerMapper.insertSelective(record);
    }

    @Override
    public int getCstCustomerCount() {
        return cstCustomerMapper.getCstCustomerCount();
    }

    @Override
    public List<CstCustomer> listCstCustomerNameAndCount(CstCustomer record) {
        return cstCustomerMapper.listCstCustomerNameAndCount(record);
    }
}
