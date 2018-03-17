package com.zking.crm.controller;

import com.zking.crm.biz.ICstCustomerBiz;
import com.zking.crm.biz.ICstLostBiz;
import com.zking.crm.biz.ICstServiceBiz;
import com.zking.crm.biz.IOrdersBiz;
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
import java.util.List;

@Controller
@RequestMapping("/serviceReport")
public class ServiceReportController {

    @Autowired
    private ICstLostBiz cstLostBiz;

    @Autowired
    private ICstServiceBiz cstServiceBiz;

    @Autowired
    private ICstCustomerBiz cstCustomerBiz;

    @Autowired
    private IOrdersBiz ordersBiz;

    //客户流失分析
    @RequestMapping("/toLost")
    public String toLost(Model model) {
        return "rept/lost";
    }

    @RequestMapping("/lost")
    public void lost(Model model, CstLost cstLost, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<CstLost> cstLosts = cstLostBiz.listCstLostTrue(cstLost, pageBean);
        request.setAttribute("cstLosts", cstLosts);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(cstLosts);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);
    }

    //客户服务分析
    @RequestMapping("/toSer")
    public String toSer(Model model) {
        return "rept/ser";
    }

    @RequestMapping("/listSvrType")
    @ResponseBody
    public List<CstService> listSvrType(Model model, CstService cstService, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CstService> cstServices = cstServiceBiz.listSvrType(cstService);
        return cstServices;
    }


    @RequestMapping("/listCreateYear")
    @ResponseBody
    public List<CstService> listCreateYear(Model model, CstService cstService, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CstService> cstServices = cstServiceBiz.listCreateYear();
        return cstServices;
    }

    //客户构成分析
    @RequestMapping("/toCons")
    public String toCons(Model model) {
        return "rept/cons";
    }

    @RequestMapping("/listCstCustomerNameAndCount")
    @ResponseBody
    public List<CstCustomer> listCstCustomerNameAndCount(Model model, CstCustomer cstCustomer, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("cstCustomer.getCustCredit():"+cstCustomer.getCustCredit());
        if(null==cstCustomer.getCustCredit()||"".equals(cstCustomer.getCustCredit()+"")){
            cstCustomer.setCustCredit(1);
        }
        List<CstCustomer> cstCustomers = cstCustomerBiz.listCstCustomerNameAndCount(cstCustomer);
        return cstCustomers;
    }

    //客户贡献分析
    @RequestMapping("/toContr")
    public String toContr(Model model) {
        return "rept/contr";
    }

    @RequestMapping("/listOrdersNameAndMoney")
    @ResponseBody
    public List<Orders> listOrdersNameAndMoney(Model model, Orders orders, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if(orders.getOdrAddr().equals("全部")){
//            orders.setOdrAddr("");
//        }
        List<Orders> ordersList = ordersBiz.listOrdersNameAndMoney(orders);
        return ordersList;
    }

    @RequestMapping("/listOrdersYear")
    @ResponseBody
    public List<Orders> listOrdersYear(Model model, Orders orders, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Orders> ordersList = ordersBiz.listOrdersYear();
        return ordersList;
    }
}
