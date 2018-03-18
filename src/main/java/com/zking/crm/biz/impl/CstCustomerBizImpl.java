package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstCustomerBiz;
import com.zking.crm.mapper.CstCustomerMapper;
import com.zking.crm.model.CstCustomer;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CstCustomerBizImpl implements ICstCustomerBiz {

    @Autowired
    private CstCustomerMapper cstCustomerMapper;

    @Override
    public void edit(CstCustomer CstCustomer) {
        cstCustomerMapper.updateByPrimaryKeySelective(CstCustomer);
    }

    @Override
    public void delCstCustomer(String custNo) {
        cstCustomerMapper.deleteByPrimaryKey(custNo);
    }

    @Override
    public CstCustomer load(String custNo) {
        return cstCustomerMapper.loadCstTop(custNo);
    }

    @Override
    public List<CstCustomer> listCstCustomer(CstCustomer CstCustomer, PageBean pageBen) {
        return cstCustomerMapper.listCstCustomer(CstCustomer);
    }

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
