package com.zking.crm.controller;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.biz.ISysUserBiz;
import com.zking.crm.model.SalChance;
import com.zking.crm.model.SysUser;
import com.zking.crm.util.JsonUtils;
import com.zking.crm.util.PageBean;
import com.zking.crm.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.List;

@Controller
@RequestMapping("/salChance")
public class SalChanceController {

    @Autowired
    private ISalChanceBiz salChanceBiz;

    @Autowired
    private ISysUserBiz sysUserBiz;

    @RequestMapping("/toList")
    public String toList(Model model) {
        return "sale/list";
    }

    @RequestMapping("/list")
    public void list(Model model, SalChance salChance, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<SalChance> salChanceList = salChanceBiz.listSalChance(salChance, pageBean);
        request.setAttribute("salChanceList", salChanceList);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(salChanceList);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

    }

    @RequestMapping("/add")
    @ResponseBody
    public int add(Model model, SalChance salChance, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        salChanceBiz.addSalChance(salChance);
        return 1;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public int edit(Model model, SalChance salChance, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        salChanceBiz.editSalChance(salChance);
        return 1;
    }

    @RequestMapping("/toDel")
    @ResponseBody
    public int toDel(Model model, SalChance salChance) {
        return salChanceBiz.delSalChance(salChance.getChcId());
    }

    @RequestMapping("/dispatch")
    @ResponseBody
    public int dispatch(Model model, SalChance salChance, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Timestamp tt = new Timestamp(System.currentTimeMillis());
//        salChance.setChcDueDate(tt);
        System.out.println("chcDueId:" + salChance.getChcDueId());
        SysUser user = sysUserBiz.loadSysUser(salChance.getChcDueId());
        salChance.setChcDueId(user.getUsrId());
        salChance.setChcDueTo(user.getUsrName());
        int i = salChanceBiz.dispatch(salChance);
        System.out.println("i: " + i);
        int n = 0;
        if (i == 1) {
            salChance.setChcStatus(2);
            salChanceBiz.updateStatus(salChance);
            n = 1;
        }
        return n;
    }

    @RequestMapping("/toDispatch")
    @ResponseBody
    public List<SysUser> toDispatch(Model model, SysUser sysUser, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        sysUser.setUsrRoleId(3l);
        List<SysUser> sysUsers = sysUserBiz.listManager(sysUser);
        return sysUsers;
    }

}
