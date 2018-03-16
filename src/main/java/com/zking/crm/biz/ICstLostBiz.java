package com.zking.crm.biz;

import com.zking.crm.model.CstLost;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface ICstLostBiz {
    List<CstLost> listCstLostTrue(CstLost record, PageBean pageBean);
}
