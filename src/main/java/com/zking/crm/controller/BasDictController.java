package com.zking.crm.controller;

import com.zking.crm.biz.IBasDictBiz;
import com.zking.crm.model.BasDict;
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
@RequestMapping("/BasDict")
public class BasDictController {

    @Autowired
    private IBasDictBiz basDictBiz;

    @ModelAttribute
    public void init(Model model, HttpSession session){
        BasDict basDict=new BasDict();
        model.addAttribute("basDict",basDict);
    }

    @RequestMapping("/todict")
    public String toList(Model model){
        return "base/dict";
    }

    @RequestMapping("/dict")
    @ResponseBody
    public ResponseData list(Model model, BasDict basDict, HttpSession session, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
        PageBean pageBean = new PageBean();
        pageBean.setRequest(request);
        List<BasDict> basDictList = basDictBiz.listBasDict(basDict, pageBean);
        request.setAttribute("BasDictList",basDictList);
        ResponseData responseData=new ResponseData();
        responseData.setTotal(pageBean.getTotalRecord());
        responseData.setRows(basDictList);

        response.setContentType("text/plain;charset=utf-8");
        OutputStream os = response.getOutputStream();
        JsonUtils.writeValue(os, responseData);

        return responseData;

    }


    @RequestMapping("/toAdd")
    public String toAdd(Model model) {
        return "base/dict_add";
    }

    @RequestMapping("/add")
    @ResponseBody
    public int add(Model model, BasDict basDict) {
        basDictBiz.addBasDict(basDict);
        return 1;
    }

    @RequestMapping("/toEdit")
    public String toEdit(Model model, BasDict basDict){
        BasDict bd=basDictBiz.load(basDict.getDictId());
        return "base/edit";
    }

    @RequestMapping("/edit")
    @ResponseBody
    public int edit(Model model, BasDict basDict) {
        basDictBiz.edit(basDict);
        return 1;
    }

    @RequestMapping("/toDel")
    @ResponseBody
    public int toDel(Model model, BasDict basDict) {
        basDictBiz.delBasDict(basDict.getDictId());
        return 1;
    }

    @RequestMapping("/toGetDict")
    @ResponseBody
    public List<BasDict> toGetDict(Model model, BasDict basDict) {
        basDict.setDictType("地区");
        List<BasDict> dic = basDictBiz.getDic(basDict);
        return dic;
    }

    @RequestMapping("/toGetDidj")
    @ResponseBody
    public List<BasDict> toGetDidj(Model model, BasDict basDict) {
        basDict.setDictType("企业客户等级");
        List<BasDict> dic = basDictBiz.getDic(basDict);
        return dic;
    }

}
