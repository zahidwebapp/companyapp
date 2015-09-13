package com.zcompany.zapp.service;

import java.util.List;

import com.zcompany.zapp.model.Company;


public interface CompanyService {
 
    public void addCompany(Company c);
    public void updateCompany(Company c);
    public List<Company> listCompany();
    public List<Company> getCompanyById(int id);
    public void removeCompany(int id);
	public Company getCompany(int id);
     
}
