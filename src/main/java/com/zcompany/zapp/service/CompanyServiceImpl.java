package com.zcompany.zapp.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zcompany.zapp.dao.CompanyDAO;
import com.zcompany.zapp.model.Company;

@Service
public class CompanyServiceImpl implements CompanyService {
    
   private CompanyDAO companyDAO;

   public void setCompanyDAO(CompanyDAO companyDAO) {
       this.companyDAO = companyDAO;
   }

   @Override
   @Transactional
   public void addCompany(Company c) {
       this.companyDAO.addCompany(c);
   }

   @Override
   @Transactional
   public void updateCompany(Company c) {
       this.companyDAO.updateCompany(c);
   }

   @Override
   @Transactional
   public List<Company> listCompany() {
       return this.companyDAO.listCompany();
   }

   @Override
   @Transactional
   public List<Company> getCompanyById(int id) {
       return this.companyDAO.getCompanyById(id);
   }

   @Override
   @Transactional
   public void removeCompany(int id) {
       this.companyDAO.removeCompany(id);
   }

   @Override
   @Transactional
   public Company getCompany(int id) {
       return this.companyDAO.getCompany(id);
   }

}
