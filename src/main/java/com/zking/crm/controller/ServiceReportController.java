package com.zking.crm.controller;

import com.zking.crm.biz.ICstLostBiz;
import com.zking.crm.model.CstLost;
import com.zking.crm.model.SalPlan;
import com.zking.crm.util.JsonUtils;
import com.zking.crm.util.PageBean;
import com.zking.crm.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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



}
