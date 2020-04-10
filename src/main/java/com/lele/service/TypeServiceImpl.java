package com.lele.service;

import com.lele.mapper.TypeMapper;
import com.lele.pojo.Type;

import java.util.List;

public class TypeServiceImpl implements TypeService {
    public TypeMapper typeMapper;

    public void setTypeMapper(TypeMapper typeMapper) {
        this.typeMapper = typeMapper;
    }

    public List<Type> queryAllType() {
        return typeMapper.queryAllType();
    }
}
