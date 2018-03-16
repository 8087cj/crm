package com.zking.crm.biz;

import com.zking.crm.model.SalChance;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface ISalChanceBiz {

    int delSalChance(Long chcId);

    void addSalChance(SalChance record);

    SalChance loadSalChance(Long chcId);

    void editSalChance(SalChance record);

    List<SalChance> listSalChance(SalChance record, PageBean pageBean);

    List<SalChance> listAllSalChance(SalChance record, PageBean pageBean);

    //指派销售机会
    int dispatch(SalChance record);

    //修改状态
    void updateStatus(SalChance record);

    //得到销售管理的信息
    SalChance loadSalChanceTop(Long chcId);
}
