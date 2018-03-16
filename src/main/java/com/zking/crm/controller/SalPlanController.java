package com.zking.crm.controller;

import com.zking.crm.biz.ICstCustomerBiz;
import com.zking.crm.biz.ICstLinkmanBiz;
import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.biz.ISalPlanBiz;
import com.zking.crm.model.*;
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
@RequestMapping("/salPlan")
public class SalPlanController {
    @Autowired
    private ISalChanceBiz salChanceBiz;

    @Autowired
    private ISalPlanBiz salPlanBiz;

    @Autowired
    private ICstLinkmanBiz cstLinkmanBiz;

    @Autowired
    private ICstCustomerBiz cstCustomerBiz;

    @RequestMapping("/toDev")
    public String toDev(Model model) {
        return "sale/dev";
    }

    @RequestMapping("/dev")
    public void dev(Model model, SalChance salChance, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        salChance.setChcStatus(1);
        List<SalChance> salChanceList2 = salChanceBiz.listSalChance(salChance, pageBean);
        request.setAttribute("salChanceList2", salChanceList2);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(salChanceList2);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

    }

    @RequestMapping("/list")
    public void list(Model model, SalPlan salPlan, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<SalPlan> salPlans = salPlanBiz.listByChcId(salPlan, pageBean);
        request.setAttribute("salPlans", salPlans);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(salPlans);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

    }

    @RequestMapping("/add")
    @ResponseBody
    public int add(Model model, SalPlan salPlan, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //记得得到营销机会ID
        System.out.println("ChcId:" + salPlan.getPlaChcId());
        salPlanBiz.addSalPlan(salPlan);
        return 1;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public int edit(Model model, SalPlan salPlan, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        salPlanBiz.editSalPlan(salPlan);
        return 1;
    }

    @RequestMapping("/del")
    @ResponseBody
    public int del(Model model, SalPlan salPlan) {
        return salPlanBiz.delSalPlan(salPlan.getPlaId());
    }

    //保存执行效果
    @RequestMapping("/plan")
    @ResponseBody
    public int plan(Model model, SalPlan salPlan, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        salPlanBiz.plan(salPlan);
        return 1;
    }

    //开发成功
    @RequestMapping("/developmentSuccess")
    @ResponseBody
    public int developmentSuccess(Model model, SalChance salChance, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        salChance.setChcStatus(3);
        salChanceBiz.updateStatus(salChance);


        //根据销售机会中相应信息（包括客户名称、联系人和联系人电话）自动创建客户记录
//        --客户信息表：cst_customer
//        客户名称，cust_name
//        客户经理ID，cust_manager_id
//        客户经理名字，cust_manager_name


        int count = cstCustomerBiz.getCstCustomerCount();
        int cc = count + 1;
        SalChance sc = salChanceBiz.loadSalChanceTop(salChance.getChcId());

        CstCustomer cstCustomer = new CstCustomer();
        cstCustomer.setCustNo("KH_yyyyMMdd_0000" + cc);
        cstCustomer.setCustName(sc.getChcCustName());
        cstCustomer.setCustManagerId(sc.getChcCreateId());
        cstCustomer.setCustManagerName(sc.getChcCreateBy());
        cstCustomerBiz.addCstCustomer(cstCustomer);
        System.out.println("no:" + cstCustomer.getCustNo());

//        --联系人表：cst_linkman
//        客户编号:外键 cst_customer(cust_no)，lkm_cust_no
//        客户名称，lkm_cust_name
//        联系人名字，lkm_name
//        办公电话，lkm_tel
        CstLinkman cstLinkman = new CstLinkman();
        cstLinkman.setLkmCustNo(cstCustomer.getCustNo());
        cstLinkman.setLkmCustName(sc.getChcCustName());
        cstLinkman.setLkmName(sc.getChcLinkman());
        cstLinkman.setLkmTel(sc.getChcTel());
        cstLinkmanBiz.addCstLinkman(cstLinkman);


        return 1;
    }

    //终止开发
    @RequestMapping("/terminateDevelopment")
    @ResponseBody
    public int terminateDevelopment(Model model, SalChance salChance, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        salChance.setChcStatus(4);
        salChanceBiz.updateStatus(salChance);
        return 1;
    }

}
