package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISysUserBiz;
import com.zking.crm.mapper.SysUserMapper;
import com.zking.crm.model.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SysUserBizImpl implements ISysUserBiz {

    @Autowired
    private SysUserMapper sysUserMapper;

    @Override
    public int delSysUser(Long usrId) {
        return sysUserMapper.deleteByPrimaryKey(usrId);
    }

    @Override
    public void addSysUser(SysUser record) {
        sysUserMapper.insertSelective(record);
    }

    @Override
    public SysUser loadSysUser(Long usrId) {
        return sysUserMapper.selectByPrimaryKey(usrId);
    }

    @Override
    public void editSysUser(SysUser record) {
        sysUserMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<SysUser> listManager(SysUser record) {
        return sysUserMapper.listManager(record);
    }
}
