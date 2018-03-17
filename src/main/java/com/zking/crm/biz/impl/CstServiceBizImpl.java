package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstServiceBiz;
import com.zking.crm.mapper.CstServiceMapper;
import com.zking.crm.model.CstService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CstServiceBizImpl implements ICstServiceBiz {

    @Autowired
    private CstServiceMapper cstServiceMapper;


    @Override
    public List<CstService> listSvrType(CstService record) {
        return cstServiceMapper.listSvrType(record);
    }

    @Override
    public List<CstService> listCreateYear() {
        return cstServiceMapper.listCreateYear();
    }
}
