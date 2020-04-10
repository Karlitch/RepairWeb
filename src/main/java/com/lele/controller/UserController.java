package com.lele.controller;

import com.lele.pojo.User;
import com.lele.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    public UserService userService;

    //跳转到登录页面
    @RequestMapping("toLogin")
    public String toLogin() {
        return "login";
    }

    //    查询全部用户信息
    @RequestMapping("/all")
    public String query(Model model) {
        List<User> users = userService.queryAllUser();
        model.addAttribute("list", users);
        return "company/main1";
    }

    //    验证登录账号密码
    @RequestMapping(value = "/login", produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String login(HttpSession httpSession, String userTel, String userPassword) {
        String msg = " ";
        User password = userService.getPassword(userTel, userPassword);
        System.out.println("userTel=>" + userTel);
        System.out.println("userPassword=>" + userPassword);
        System.err.println(password);
        if (password != null) {
            httpSession.setAttribute("user", userTel);
            msg = "ok";
        } else {
            msg = "用户或密码错误";
        }
        return msg;
    }

    //    退出登录
    @RequestMapping("/logout")
    public String logout(HttpSession httpSession) {
        httpSession.removeAttribute("user");
        return "login";
    }

    //    跳转到注册页面
    @RequestMapping("/toLogon")
    public String tologon() {
        return "logonUser";
    }

    //    注册
    @RequestMapping("/logon")
    public String logon(User user) {
        userService.logonUser(user);
        return "main";
    }

}
