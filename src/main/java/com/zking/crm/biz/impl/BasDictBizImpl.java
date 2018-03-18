package com.zking.crm.biz.impl;

import com.zking.crm.biz.IBasDictBiz;
import com.zking.crm.mapper.BasDictMapper;
import com.zking.crm.model.BasDict;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BasDictBizImpl implements IBasDictBiz {

    @Autowired
    private BasDictMapper basDictMapper;

    @Override
    public void addBasDict(BasDict basDict) {
        basDictMapper.insertSelective(basDict);
    }

    @Override
    public void edit(BasDict basDict) {
        basDictMapper.updateByPrimaryKeySelective(basDict);
    }

    @Override
    public void delBasDict(Long dictId) {
        basDictMapper.deleteByPrimaryKey(dictId);
    }

    @Override
    public BasDict load(Long dictId) {
        return basDictMapper.selectByPrimaryKey(dictId);
    }

    @Override
    public List<BasDict> listBasDict(BasDict BasDict, PageBean PageBean) {
        return basDictMapper.listBasDict(BasDict);
    }

    @Override
    public List<BasDict> getDic(BasDict basDict) {
        return basDictMapper.getDict(basDict);
    }

    @Override
    public BasDict getDictVal(BasDict basDict) {
        return basDictMapper.getDictVal(basDict);
    }

}
