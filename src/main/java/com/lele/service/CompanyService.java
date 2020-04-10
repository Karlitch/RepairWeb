package com.lele.service;

import com.lele.pojo.Company;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CompanyService {
    List<Company> queryAllComp();

    //    按名字查询
    List<Company> getComp(String compName);

    //    增加Company
    int addComp(Company company);

    //    删除Company
    int deleComp(int id);

    //    修改信息
    int updateComp(Company company);

    //    修改密码
    int updateCompPassword(Map<String, String> map);

    //    公司登录
    Company compLogin(String compEmail, String compPassword);

    //    得到公司ID，查询信息
    Company compLoginInfo(String compEmail);

//    根据Email查询公司信息
    Company getByEmail(String Email);

}
