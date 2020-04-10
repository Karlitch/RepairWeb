package com.lele.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AjaxController {

    @RequestMapping("/json")
    public String you(String name,String pwd){
        String msg = " ";
        if (name != null){
            if ("123".equals(name)){
                msg = "ok";
            }else {
                msg = "用户名error";
            }
        }

        if (pwd != null){
            if (pwd.equals("qq")){
                msg = "ok";
            }else {
                msg = "密码错误";
            }
        }

        return msg;
    }
}
