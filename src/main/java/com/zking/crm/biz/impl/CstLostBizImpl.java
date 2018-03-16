package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstLostBiz;
import com.zking.crm.mapper.CstLostMapper;
import com.zking.crm.model.CstLost;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CstLostBizImpl implements ICstLostBiz {

    @Autowired
    private CstLostMapper cstLostMapper;

    @Override
    public List<CstLost> listCstLostTrue(CstLost record, PageBean pageBean) {
        return cstLostMapper.listCstLostTrue(record);
    }
}
