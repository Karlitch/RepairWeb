package com.lele.controller;

import com.lele.pojo.Userlove;
import com.lele.service.UserService;
import com.lele.service.UserloveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/userlove")
public class UserloveController {
    @Autowired
    @Qualifier("userloveServiceImpl")
    public UserloveService userloveService;
    @RequestMapping("/all")
//    @ResponseBody
    public String query(Model model,int id){
        List<Userlove> userloves = userloveService.queryAllUserlove(id);
        model.addAttribute("list",userloves);
        return "userloves";
    }
}
