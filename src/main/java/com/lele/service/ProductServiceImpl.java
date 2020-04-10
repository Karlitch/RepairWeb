package com.lele.service;

import com.lele.mapper.ProductMapper;
import com.lele.pojo.Product;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    public ProductMapper productMapper;

    public void setProductMapper(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    public List<Product> queryAllPro() {
        return productMapper.queryAllPro();
    }

    public List<Product> getPro(String proName) {
        return productMapper.getPro(proName);
    }

    public Product getProById(int id) {
        return productMapper.getProById(id);
    }

    public int updatePro(Product product) {
        return productMapper.updatePro(product);
    }

    public int deletePro(int id) {
        return productMapper.deletePro(id);
    }

    public int addPro(Product product) {
        return productMapper.addPro(product);
    }
}
