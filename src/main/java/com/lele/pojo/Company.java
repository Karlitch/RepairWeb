package com.lele.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Time;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Company {
    private int id;
    private String compName;
    private String compInfo;
    private String compTel;
    private String compAddr;
    private String compEmail;
    private Time opentime;
    private Time closetime;
    private String compPassword;

    private List<Product> productList;
}
