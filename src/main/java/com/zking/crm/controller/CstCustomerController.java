package com.zking.crm.controller;

import com.zking.crm.biz.ICstCustomerBiz;
import com.zking.crm.biz.ICstLostBiz;
import com.zking.crm.biz.IOrdersBiz;
import com.zking.crm.biz.IProductBiz;
import com.zking.crm.model.*;
import com.zking.crm.util.JsonUtils;
import com.zking.crm.util.PageBean;
import com.zking.crm.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/cstCustomer")
public class CstCustomerController {

    @Autowired
    private ICstCustomerBiz cstCustomerBiz;

    @Autowired
    private IOrdersBiz ordersBiz;

    @Autowired
    private ICstLostBiz cstLostBiz;

    @RequestMapping("/toCstCustomer")
    public String toCstCustomer(Model model) {
        return "cust/custlist";
    }

    @RequestMapping("/CstCustomer")
    @ResponseBody
    public ResponseData list(Model model, CstCustomer CstCustomer, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<CstCustomer> CstCustomerList = cstCustomerBiz.listCstCustomer(CstCustomer, pageBean);
        request.setAttribute("CstCustomerList", CstCustomerList);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(CstCustomerList);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

        return responseData;

    }

    @RequestMapping("/toLoad")
    public String toLoad(Model model) {
        return "cust/edit";
    }

    @RequestMapping("/load")
    @ResponseBody
    public int load(Model model, CstCustomer cstCustomer) {
        cstCustomerBiz.load(cstCustomer.getCustNo());
        return 1;
    }

    @RequestMapping("/toEdit")
    public String toEdit(Model model, CstCustomer cstCustomer) {
        CstCustomer bc = cstCustomerBiz.load(cstCustomer.getCustNo());
        return "base/edit";
    }

    @RequestMapping("/edit")
    @ResponseBody
    public int edit(Model model, CstCustomer cstCustomer) {
        cstCustomerBiz.edit(cstCustomer);
        return 1;
    }

    //历史订单
    @RequestMapping("/listOrdersByCustomer")
    @ResponseBody
    public ResponseData listOrdersByCustomer(Model model, Orders orders, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        System.out.println("OdrCustomer:"+orders.getOdrCustomer());
        List<Orders> ordersList = ordersBiz.listOrdersByCustomer(orders,pageBean);
        request.setAttribute("ordersList", ordersList);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(ordersList);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);
        return responseData;
    }


    //订单明细
    @RequestMapping("/loadOrders")
    @ResponseBody
    public void loadOrders(Model model,Orders orders,HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        //得到订单信息
        Orders oo = ordersBiz.loadOrders(orders.getOdrId());
        if(oo.getOdrStatus()==false){
            oo.setStatusWZ("未回款");
        }else if(oo.getOdrStatus()==true){
            oo.setStatusWZ("已回款");
        }
        //得到总金额
        OrdersLine ordersLine=new OrdersLine();
        ordersLine.setOddOrderId(orders.getOdrId());
        OrdersLine sumPrice = ordersBiz.getSumPrice(ordersLine);
        oo.setSumsProce(sumPrice.getOddPrice());
        session.setAttribute("oo",oo);
        System.out.println(oo);
    }

    @RequestMapping("/listOrdersLineByOrder")
    @ResponseBody
    public void listOrdersLineByOrder(Model model, OrdersLine ordersLine, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<OrdersLine> ordersLines = ordersBiz.listOrdersLineByOrder(ordersLine, pageBean);
        request.setAttribute("ordersLines", ordersLines);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(ordersLines);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

        //得到订单信息
        Orders oo = ordersBiz.loadOrders(ordersLine.getOddOrderId());
        if (oo.getOdrStatus() == false) {
            oo.setStatusWZ("未回款");
        } else if (oo.getOdrStatus() == true) {
            oo.setStatusWZ("已回款");
        }
        //得到总金额
        OrdersLine ol = new OrdersLine();
        ol.setOddOrderId(ordersLine.getOddOrderId());
        OrdersLine sumPrice = ordersBiz.getSumPrice(ol);
        oo.setSumsProce(sumPrice.getOddPrice());
        request.setAttribute("o", oo);
        System.out.println(oo);

    }

    //客户流失管理
    @RequestMapping("/toCstCustomerLost")
    public String toCstCustomerLost(Model model) {
        return "cust/lostlist";
    }

    @RequestMapping("/listCstLost")
    @ResponseBody
    public void listCstLost(Model model, CstLost cstLost, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        if(cstLost.getLstStatus()==null){
            cstLost.setLstStatus(2);
        }
        List<CstLost> cstLosts = cstLostBiz.listCstLost(cstLost, pageBean);
        request.setAttribute("cstLosts", cstLosts);
        ResponseData responseData = new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(cstLosts);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);
    }


    @RequestMapping("/delay")
    @ResponseBody
    public int delay(Model model, CstLost cstLost, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CstLost cl = cstLostBiz.loadCstLost(cstLost.getLstId());
        cstLost.setLstId(cstLost.getLstId());
        if (cl.getLstDelay() != null) {
            cstLost.setLstDelay(cl.getLstDelay() + cstLost.getLstReason() + ".");
        }else{
            cstLost.setLstDelay( cstLost.getLstReason()+ ".");
        }
        cstLostBiz.delay(cstLost);
        return 1;
    }

    @RequestMapping("/confirm")
    @ResponseBody
    public int confirm(Model model, CstLost cstLost, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tt=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
        cstLost.setLstLostDate(tt);
        cstLost.setLstReason(cstLost.getLstReason());
        cstLost.setLstId(cstLost.getLstId());
        cstLostBiz.confirm(cstLost);
        return 1;
    }

}
