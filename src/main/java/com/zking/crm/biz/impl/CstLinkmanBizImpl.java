package com.zking.crm.biz.impl;

import com.zking.crm.biz.ICstLinkmanBiz;
import com.zking.crm.mapper.CstLinkmanMapper;
import com.zking.crm.model.CstLinkman;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CstLinkmanBizImpl implements ICstLinkmanBiz {
    @Autowired
    private CstLinkmanMapper cstLinkmanMapper;

    @Override
    public int addCstLinkman(CstLinkman record) {
        return cstLinkmanMapper.insertSelective(record);
    }
}
