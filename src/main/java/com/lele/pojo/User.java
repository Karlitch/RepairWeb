package com.lele.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private Integer id;
    private String userName;
    private Date birthday;
    private String userTel;
    private String userAddr;
    private String userPassword;

    private List<Product> productList;
}
