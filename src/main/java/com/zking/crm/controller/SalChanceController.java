package com.zking.crm.controller;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.model.SalChance;
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
import java.util.List;

@Controller
@RequestMapping("/salChance")
public class SalChanceController {

    @Autowired
    private ISalChanceBiz salChanceBiz;

    @ModelAttribute
    public void init(Model model, HttpSession session) {
        //1.初始化命令对象
        SalChance salChance=new SalChance();
        model.addAttribute("salChance",salChance);

        //2.初始化动态数据

    }

    @RequestMapping("/toList")
    public String toList(Model model) {
        return "sale/list";
    }

    @RequestMapping("/list")
    public void list(Model model, SalChance salChance, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<SalChance> salChanceList = salChanceBiz.listSalChance(salChance, pageBean);
        request.setAttribute("salChanceList",salChanceList);
        ResponseData responseData=new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(salChanceList);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

    }

    @RequestMapping("/toAdd")
    public String toAdd(Model model) {
        return "sale/add";
    }

    @RequestMapping("/add")
    public void add(Model model,SalChance salChance) {
        salChanceBiz.addSalChance(salChance);
    }

    @RequestMapping("/toEdit")
    public String toEdit(Model model,SalChance salChance) {
        SalChance sc = salChanceBiz.loadSalChanceTop(salChance.getChcId());

        return "sale/edit";
    }

    @RequestMapping("/edit")
    public void edit(Model model,SalChance salChance) {
        salChanceBiz.editSalChance(salChance);
    }

    @RequestMapping("/toDel")
    @ResponseBody
    public int toDel(Model model,SalChance salChance) {
        return  salChanceBiz.deletSalChancee(salChance.getChcId());
    }



}
