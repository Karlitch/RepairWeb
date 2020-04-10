package com.lele.controller;

import com.lele.pojo.Type;
import com.lele.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/type")
public class TypeController {
    @Autowired
    @Qualifier("typeServiceImpl")
    public TypeService typeService;

    @RequestMapping("/all")
    public String query(Model model){
        List<Type> types = typeService.queryAllType();
        model.addAttribute("type",types);
        return "type";
    }

    @ResponseBody
    @RequestMapping("/jsonAll")
    public List<Type> all(){
        List<Type> types = typeService.queryAllType();
        return types;
    }
}
