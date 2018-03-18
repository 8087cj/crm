package com.zking.crm.controller;

import com.zking.crm.biz.IProductBiz;
import com.zking.crm.model.Product;
import com.zking.crm.model.SysUser;
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
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private IProductBiz productBiz;

    @ModelAttribute
    public void init(Model model, HttpSession session){
        Product product=new Product();
        model.addAttribute("product",product);
    }

    @RequestMapping("/toProduct")
    public String toProduct(Model model){
        return "base/product";
    }

    @RequestMapping("/Product")
    @ResponseBody
    public ResponseData list(Model model, Product product, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<Product> ProductList = productBiz.listProduct(product,pageBean);
        request.setAttribute("BasDictList",ProductList);
        ResponseData responseData=new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(ProductList);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

        return responseData;

    }

    @RequestMapping("/productsName")
    @ResponseBody
    public List<Product> productsName(Model model,Product product, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> products = productBiz.listProductName(product);
        return products;
    }

}
