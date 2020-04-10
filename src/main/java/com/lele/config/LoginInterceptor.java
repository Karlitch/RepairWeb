package com.lele.config;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("uri======>"+request.getRequestURI());

        if(request.getRequestURI().contains("login")){
            return true;
        }

        if(request.getRequestURI().contains("toLogin")){
            return true;
        }

        if(request.getRequestURI().contains("toLogon")){
            return true;
        }

        if(request.getRequestURI().contains("logon")){
            return true;
        }
        HttpSession httpSession = request.getSession();
        if (httpSession.getAttribute("user") != null){
            return true;
        }

        if (httpSession.getAttribute("company")!=null){
            return true;
        }

        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,response);
        return false;
    }
}
