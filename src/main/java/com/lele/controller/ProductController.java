package com.lele.controller;

import com.lele.pojo.Product;
import com.lele.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    @Qualifier("productServiceImpl")
    public ProductService productService;

    @RequestMapping("/toAdd")
    public String toAdd() {
        return "company/addPro";
    }

    @RequestMapping("/all")
    public String query(Model model) {
        List<Product> list = productService.queryAllPro();
        model.addAttribute("product", list);
        return "show";
    }

    @RequestMapping("/jsonAll")
    @ResponseBody
    public List<Product> jsonAll() {
        List<Product> list = productService.queryAllPro();
        return list;
    }

    @RequestMapping("/getPro")
    public String getPro(Model model, String proName) {
        System.out.println(proName);
        List<Product> pro = productService.getPro(proName);
        System.err.println(pro);
        if (pro == null || pro.isEmpty()) {
            model.addAttribute("error", "对不起，查询不到该产品😧");
        }
        model.addAttribute("product", pro);
        return "show";
    }

    @RequestMapping("/getProId/{id}")
    public String getProById(Model model, @PathVariable("id") int id) {
        System.err.println(id);
        Product proById = productService.getProById(id);
        model.addAttribute("proDetail", proById);
        return "detail";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(int id, Model model) {
        Product proById = productService.getProById(id);
        model.addAttribute("proInfo", proById);
        return "company/updatePro";
    }

    @RequestMapping("/update")
    public String updatePro(Product product, Model model) {
        productService.updatePro(product);
        return "redirect:/company/showTable";
    }

    @RequestMapping("/delete")
    public String deletePro(int id) {
        int i = productService.deletePro(id);
        return "redirect:/company/showTable";
    }

    @RequestMapping("/add")
    public String addPro(Product product, @RequestParam("file") CommonsMultipartFile file ) throws IOException {
//        获取上传文件名
        String uploadFileName = file.getOriginalFilename();
//        本地路径
        String localPath = "G:\\RepairWeb\\web\\Img\\";

//        生成UUID
        if (!file.isEmpty()) {
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType = file.getContentType();
            //获得文件后缀名
            assert contentType != null;
//            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            //得到 文件名
            uploadFileName = uuid + ".jpg";
            System.out.println("fileName=======>"+uploadFileName);
            //文件保存路径
            file.transferTo(new File(localPath,uploadFileName));
        }
        String sqlPath = "/Img/" + uploadFileName;
        System.out.println(sqlPath);
        product.setProImg(sqlPath);

        productService.addPro(product);
        return "redirect:/company/showTable";
    }
}
