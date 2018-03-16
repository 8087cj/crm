package com.zking.crm.biz;

import com.zking.crm.model.SysUser;

import java.util.List;

public interface ISysUserBiz {
    int delSysUser(Long usrId);

    void addSysUser(SysUser record);

    SysUser loadSysUser(Long usrId);

    void editSysUser(SysUser record);

    //得到客户经理
    List<SysUser> listManager(SysUser record);
}
