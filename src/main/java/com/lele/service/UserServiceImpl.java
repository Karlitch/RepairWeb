package com.lele.service;

import com.lele.mapper.UserMapper;
import com.lele.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService {
    public UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    public User getPassword(String userTel, String userPassword) {
        return userMapper.getPassword(userTel,userPassword);
    }

    public int logonUser(User user) {
        return userMapper.logonUser(user);
    }
}
