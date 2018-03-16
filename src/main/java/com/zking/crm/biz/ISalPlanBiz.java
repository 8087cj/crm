package com.zking.crm.biz;

import com.zking.crm.model.SalPlan;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface ISalPlanBiz {
    int delSalPlan(Long plaId);

    void addSalPlan(SalPlan record);

    SalPlan loadSalPlan(Long plaId);

    void editSalPlan(SalPlan record);

    //得到指定销售机会的客户开发机会
    List<SalPlan> listByChcId(SalPlan record, PageBean pageBean);

    //执行计划(就是增加计划执行结果)
    void plan(SalPlan record);


}
