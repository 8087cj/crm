package com.zking.crm.controller;

import com.zking.crm.biz.IProductBiz;
import com.zking.crm.biz.IStoragesBiz;
import com.zking.crm.model.Product;
import com.zking.crm.model.Storages;
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
@RequestMapping("/storages")
public class StoragesController {

    @Autowired
    private IStoragesBiz storagesBiz;

    @ModelAttribute
    public void init(Model model, HttpSession session){
        Storages storages=new Storages();
        model.addAttribute("storages",storages);
    }

    @RequestMapping("/toStorages")
    public String toStorages(Model model){
        return "base/storage";
    }

    @RequestMapping("/Storages")
    @ResponseBody
    public ResponseData list(Model model, Storages storages, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<Storages> StoragesList = storagesBiz.liststorages(storages,pageBean);
        request.setAttribute("StoragesList",StoragesList);
        ResponseData responseData=new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(StoragesList);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

        return responseData;

    }



}
