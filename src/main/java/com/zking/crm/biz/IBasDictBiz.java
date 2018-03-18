package com.zking.crm.biz;

import com.zking.crm.model.BasDict;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface IBasDictBiz {

    void  addBasDict(BasDict BasDict);

    void edit(BasDict BasDict);

    void delBasDict(Long dictId);

    BasDict load(Long dictId);

    List<BasDict> listBasDict(BasDict BasDict, PageBean pageBen);

    List<BasDict> getDic(BasDict BasDict);

    BasDict getDictVal(BasDict basDict);
}
