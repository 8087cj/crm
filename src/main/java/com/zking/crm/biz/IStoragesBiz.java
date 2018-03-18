package com.zking.crm.biz;

import com.zking.crm.model.BasDict;
import com.zking.crm.model.Product;
import com.zking.crm.model.Storages;
import com.zking.crm.util.PageBean;

import java.util.List;

public interface IStoragesBiz {

    void  addStorages(Storages Storages);

    void edit(Storages Storages);

    void delStorages(Long dictId);

    BasDict load(Long dictId);

    List<Storages> liststorages(Storages storages, PageBean pageBen);

}
