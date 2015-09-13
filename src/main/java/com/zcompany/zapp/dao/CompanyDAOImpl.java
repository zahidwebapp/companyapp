package com.zcompany.zapp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.zcompany.zapp.model.Company;

@Repository
public class CompanyDAOImpl implements CompanyDAO {
    
   private static final Logger logger = LoggerFactory.getLogger(CompanyDAOImpl.class);

   private SessionFactory sessionFactory;
    
   public void setSessionFactory(SessionFactory sf){
       this.sessionFactory = sf;
   }

   @Override
   public void addCompany(Company c) {
       Session session = this.sessionFactory.getCurrentSession();
       session.persist(c);
       logger.info("Company saved successfully, Company Details="+c);
   }

   @Override
   public void updateCompany(Company c) {
       Session session = this.sessionFactory.getCurrentSession();
       session.update(c);
       logger.info("Company updated successfully, Company Details="+c);
   }

   @SuppressWarnings("unchecked")
   @Override
   public List<Company> listCompany() {
       Session session = this.sessionFactory.getCurrentSession();
       List<Company> companyList = session.createQuery("from Company").list();
       for(Company c : companyList){
           logger.info("Company List::"+c);
       }
       return companyList;
   }

   @Override
   public List<Company> getCompanyById(int id) {	   
       Session session = this.sessionFactory.getCurrentSession();
       Query query = session.createQuery("from Company where id = :id");
       query.setParameter("id", id);
       List<Company> companyList = query.list();
       for(Company c : companyList){
           logger.info("Company List::"+c);
       }
       return companyList;
   }

   @Override
   public void removeCompany(int id) {
       Session session = this.sessionFactory.getCurrentSession();
       Company c = (Company) session.load(Company.class, new Integer(id));
       if(null != c){
           session.delete(c);
       }
       logger.info("Company deleted successfully, company details="+c);
   }
   
   @Override
   public Company getCompany(int id) {
       Session session = this.sessionFactory.getCurrentSession();      
       Company c = (Company) session.load(Company.class, new Integer(id));
       logger.info("Company loaded successfully, Company details="+c);
       return c;
   }

}
