package com.zking.crm.controller;

import com.zking.crm.biz.ISalChanceBiz;
import com.zking.crm.model.SalChance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

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

    @RequestMapping("/list")
    public String toList(Model model) {
        return "sale/list";
    }

}
