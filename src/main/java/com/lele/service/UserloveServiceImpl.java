package com.lele.service;

import com.lele.mapper.UserMapper;
import com.lele.mapper.UserloveMapper;
import com.lele.pojo.User;
import com.lele.pojo.Userlove;

import java.util.List;

public class UserloveServiceImpl implements UserloveService {
    public UserloveMapper userloveMapper;

    public void setUserloveMapper(UserloveMapper userloveMapper) {
        this.userloveMapper = userloveMapper;
    }

    public List<Userlove> queryAllUserlove(int id) {
        return userloveMapper.queryAllUserlove(id);
    }
}
