package com.lele.service;

import com.lele.mapper.ProductMapper;
import com.lele.pojo.Product;

import java.util.List;

public interface ProductService {
    List<Product> queryAllPro();

    List<Product> getPro(String proName);

    Product getProById(int id);

    int updatePro(Product product);

    int deletePro(int id);

    int addPro(Product product);

    List<Product> getProType( int proType);

}
