package com.zking.crm.biz;

import com.zking.crm.model.CstService;

import java.util.List;

public interface ICstServiceBiz {
    List<CstService> listSvrType(CstService record);

    List<CstService> listCreateYear();
}
