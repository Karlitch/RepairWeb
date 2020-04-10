package com.lele.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    private Integer id;
    private String proName;
    private String proInfo;
    private String proImg;
    private int proType;
    private int proComp;

    private Type type;
    private Company company;

}
