package com.zking.crm.biz;

import com.zking.crm.model.CstLost;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface ICstLostBiz {
    List<CstLost> listCstLostTrue(CstLost record, PageBean pageBean);

    List<CstLost> listCstLost(CstLost record,PageBean pageBean);

    CstLost loadCstLost(Long lstId);

    //暂缓措施
    void delay(CstLost record);

    //确认流失
    void confirm(CstLost record);
}
