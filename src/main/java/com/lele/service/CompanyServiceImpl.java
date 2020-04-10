package com.lele.service;

import com.lele.mapper.CompanyMapper;
import com.lele.pojo.Company;

import java.util.List;
import java.util.Map;

public class CompanyServiceImpl implements CompanyService {

    private CompanyMapper companyMapper;

    public void setCompanyMapper(CompanyMapper companyMapper) {
        this.companyMapper = companyMapper;
    }

    public List<Company> queryAllComp() {
        return companyMapper.queryAllComp();
    }

    public List<Company> getComp(String compName) {
        return companyMapper.getComp(compName);
    }

    public int addComp(Company company) {
        return companyMapper.addComp(company);
    }

    public int deleComp(int id) {
        return companyMapper.deleComp(id);
    }

    public int updateComp(Company company) {
        return companyMapper.updateComp(company);
    }

    public int updateCompPassword(Map<String, String> map) {
        return companyMapper.updateCompPassword(map);
    }

    public Company compLogin(String compEmail, String compPassword) {
        return companyMapper.compLogin(compEmail,compPassword);
    }

    public Company compLoginInfo(String compEmail) {
        return companyMapper.compLoginInfo(compEmail);
    }

    public Company getByEmail(String Email) {
        return companyMapper.getByEmail(Email);
    }
}
