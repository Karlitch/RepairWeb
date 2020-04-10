package com.lele.service;

import com.lele.pojo.User;

import java.util.List;

public interface UserService {
    List<User> queryAllUser();

    User getPassword(String userTel,String userPassword);

    int logonUser(User user);

}
