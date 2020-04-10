package com.lele.controller;

import com.lele.pojo.Company;
import com.lele.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/company")
public class CompanyController {

    @Autowired
    @Qualifier("CompanyServiceImpl")
    public CompanyService companyService;

    @RequestMapping("/all")
    public String queryAllComp(Model model) {
        List<Company> companies = companyService.queryAllComp();
        model.addAttribute("list", companies);
        return "company/main1";
    }

//    @RequestMapping("/setting")
//    public String settingDisplay(){
//        return "components/notifications";
//    }

    @RequestMapping("/toUpdate")
    public String toupdate() {
        return "company/updateComp";
    }

    @RequestMapping("/update")
    public String updateComp(Company company) {
        companyService.updateComp(company);
        return "redirect:/company/toLogin";
    }


    @RequestMapping("/main")
    public String main() {
        return "company/main1";
    }

    @RequestMapping("/toLogin")
    public String toLogin() {
        return "company/compLogin";
    }

    @RequestMapping("/setting")
    public String tosetting() {
        return "company/notifications";
    }

    @RequestMapping("/profile")
    public String toProfile(){
        return "company/compProfile";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String compLogin(HttpSession httpSession, String compEmail, String compPassword) {
        String msg = "";
        Company company = companyService.compLogin(compEmail, compPassword);
        if (company != null) {
            httpSession.setAttribute("company", compEmail);
            msg = "ok";
        } else {
            msg = "账号或密码错误";
        }
        return msg;
    }

    @RequestMapping("/mainInfo")
    public String compLoginInfo(HttpSession httpSession, Model model) {
        String email = (String) httpSession.getAttribute("company");
        System.err.println("Email===================>" + email);
        Company company = companyService.compLoginInfo(email);
        model.addAttribute("companyInfo", company);
        return "company/main1";
    }

    @RequestMapping("/jsonComp")
    @ResponseBody
    public Company jsonComp(HttpSession httpSession) {
        String email = (String) httpSession.getAttribute("company");
        System.err.println("Email===================>" + email);
        Company companything = companyService.getByEmail(email);
        return companything;
    }

    @RequestMapping("/showTable")
    public String showForm(HttpSession httpSession, Model model) {
        String email = (String) httpSession.getAttribute("company");
        Company company = companyService.compLoginInfo(email);
        model.addAttribute("tableInfo", company);
        return "company/datatables";
    }

    @RequestMapping("/logout")
    public String logoutComp(HttpSession httpSession) {
        httpSession.removeAttribute("company");
        return "company/compLogin";
    }


    //
    @RequestMapping("/getCompName")
    public String getComp(Model model, String compName) {
        System.out.println(compName);
        List<Company> comp = companyService.getComp(compName);
        model.addAttribute("searchName", comp);
        return "test";
    }

    //
    @RequestMapping("/add")
    public String addComp(Company company) {
        System.out.println(company);
        companyService.addComp(company);
        return "a";
    }

    //
    @RequestMapping("/delete")
    public String deleteComp(int id) {
        companyService.deleComp(id);
        return "a";
    }

    //
    @RequestMapping("/upadtePassword")
    public String updatePassword(Map<String, String> map, String password) {
        map.put("compPassword", password);
        companyService.updateCompPassword(map);
        return "";
    }

}
