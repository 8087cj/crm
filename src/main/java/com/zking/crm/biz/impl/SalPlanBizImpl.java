package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISalPlanBiz;
import com.zking.crm.mapper.SalPlanMapper;
import com.zking.crm.model.SalPlan;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SalPlanBizImpl implements ISalPlanBiz {

    @Autowired
    private SalPlanMapper salPlanMapper;

    @Override
    public int delSalPlan(Long plaId) {
        return salPlanMapper.deleteByPrimaryKey(plaId);
    }

    @Override
    public void addSalPlan(SalPlan record) {
         salPlanMapper.insertSelective(record);
    }

    @Override
    public SalPlan loadSalPlan(Long plaId) {
        return salPlanMapper.selectByPrimaryKey(plaId);
    }

    @Override
    public void editSalPlan(SalPlan record) {
        salPlanMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<SalPlan> listByChcId(SalPlan record, PageBean pageBean) {
        return salPlanMapper.listByChcId(record);
    }

    @Override
    public void plan(SalPlan record) {
         salPlanMapper.plan(record) ;
    }
}
