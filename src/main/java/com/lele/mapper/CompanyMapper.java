package com.lele.mapper;

import com.lele.pojo.Company;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CompanyMapper {
//    查询全部数据
    List<Company> queryAllComp();

//    按名称查询
    List<Company> getComp(@Param("compName")String compName);

//    按Email查询公司信息
    Company getByEmail(@Param("compEmail") String compEmail);

//    增加Company
    int addComp(Company company);

//    删除Company
    int deleComp(int id);

//    修改信息
    int updateComp(Company company);

//    修改密码
    int updateCompPassword(Map<String,String> map);

//    按邮箱和密码登录
    Company compLogin(@Param("compEmail") String compEmail,@Param("compPassword") String compPassword);

//    得到公司ID，查询信息
    Company compLoginInfo(@Param("compEmail")String compEmail);
}
