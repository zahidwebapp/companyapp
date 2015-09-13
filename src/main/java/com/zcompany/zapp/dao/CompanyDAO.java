package com.zcompany.zapp.dao;

import java.util.List;

import com.zcompany.zapp.model.Company;


public interface CompanyDAO {
    public void addCompany(Company p);
    public void updateCompany(Company p);
    public List<Company> listCompany();
    public List<Company> getCompanyById(int id);
    public void removeCompany(int id);
	public Company getCompany(int id);
}
