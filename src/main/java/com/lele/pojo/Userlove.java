package com.lele.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Userlove {
    private int userId;
    private int proId;

    private User user;
    private List<Product> productList;
}
