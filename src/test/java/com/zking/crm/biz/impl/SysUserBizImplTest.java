package com.zking.crm.biz.impl;

import com.zking.crm.biz.ISysUserBiz;
import com.zking.crm.model.SysUser;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class SysUserBizImplTest extends  BaseTest{

    @Autowired
    private ISysUserBiz sysUserBiz;

    private SysUser sysUser;

    @Before
    public void setUp() throws Exception {
        sysUser=new SysUser();
    }

    @Test
    public void loadSysUser() throws Exception {
    }

    @Test
    public void listManager() throws Exception {
        sysUser.setUsrRoleId(3l);
        List<SysUser> sysUsers = sysUserBiz.listManager(sysUser);
        for(SysUser s:sysUsers){
            System.out.println(s);
        }
    }

}