package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.mapper.SalChanceMapper;
import com.zking.crm.model.SalChance;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SalChanceBizImpl implements ISalChanceBiz {

    @Autowired
    private SalChanceMapper salChanceMapper;

    @Override
    public void deletSalChancee(Long chcId) {
        salChanceMapper.deleteByPrimaryKey(chcId);
    }

    @Override
    public void addSalChance(SalChance record) {
        salChanceMapper.insertSelective(record);
    }

    @Override
    public SalChance loadSalChance(Long chcId) {
        return salChanceMapper.selectByPrimaryKey(chcId);
    }

    @Override
    public void editSalChance(SalChance record) {
        salChanceMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<SalChance> listSalChance(SalChance record, PageBean pageBean) {
        return salChanceMapper.listSalChance(record);
    }

    @Override
    public List<SalChance> listAllSalChance(SalChance record, PageBean pageBean) {
        return salChanceMapper.listAllSalChance(record);
    }

    @Override
    public int dispatch(SalChance record) {
        return salChanceMapper.dispatch(record);
    }

    @Override
    public void updateStatus(SalChance record) {
        salChanceMapper.updateStatus(record);
    }

    @Override
    public SalChance loadSalChanceTop(Long chcId) {
        return salChanceMapper.loadSalChanceTop(chcId);
    }
}
