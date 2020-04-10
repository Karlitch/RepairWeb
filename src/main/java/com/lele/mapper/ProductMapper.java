package com.lele.mapper;

import com.lele.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
//    查询全部
    List<Product> queryAllPro();
//    按照名字查询
    List<Product> getPro(@Param("proName")String proName);
//    按照ID查询
    Product getProById(@Param("id")int id);
//    修改信息
    int updatePro(Product product);
//    删除
    int deletePro(@Param("id") int id);
//    增加产品
    int addPro(Product product);
}
