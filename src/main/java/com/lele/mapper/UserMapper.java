package com.lele.mapper;

import com.lele.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
//    查询全部信息
    List<User> queryAllUser();
//    验证账号密码
    User getPassword(@Param("userTel") String userTel, @Param("userPassword") String userPassword);
//注册用户
    int logonUser(User user);
}
