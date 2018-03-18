package com.zking.crm.biz.impl;

import com.zking.crm.biz.IStoragesBiz;
import com.zking.crm.mapper.StoragesMapper;
import com.zking.crm.model.BasDict;
import com.zking.crm.model.Storages;
import com.zking.crm.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StoragesBizImpl implements IStoragesBiz {

    @Autowired
    private StoragesMapper storagesMapper;

    @Override
    public void addStorages(Storages Storages) {

    }

    @Override
    public void edit(Storages Storages) {

    }

    @Override
    public void delStorages(Long dictId) {

    }

    @Override
    public BasDict load(Long dictId) {
        return null;
    }

    @Override
    public List<Storages> liststorages(Storages storages, PageBean pageBen) {
        return storagesMapper.listStorages(storages);
    }
}
