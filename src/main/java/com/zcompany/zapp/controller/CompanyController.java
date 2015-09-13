package com.zcompany.zapp.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zcompany.zapp.model.Company;
import com.zcompany.zapp.model.Message;
import com.zcompany.zapp.service.CompanyService;

@Controller
public class CompanyController {

	private CompanyService companyService;

	@Autowired(required = true)
	@Qualifier(value = "companyService")
	public void setCompanyService(CompanyService cs) {
		this.companyService = cs;
	}

	// For add and update company both
	@RequestMapping(value = "/company/add")
	public @ResponseBody Message addCompany(@ModelAttribute("company") Company c, @Valid Company company,
			BindingResult result, @RequestParam("director") String[] director) {
		
		Message errCode = new Message();
		if (result.hasErrors()) {
			errCode.setCode(1);
			errCode.setMessage("Input Error");
			// System.out.println(result.getFieldError());
		} else {
			String dir = "";
			if(director.length > 0) {
				for (int i=0; i<director.length; i++) {
					if(i == 0) {
						dir += director[i];
					}
					else {
						dir += ","+director[i];
					}
				}
			}
			c.setDirector(dir);
			if (c.getId() == 0) {
				// new company, add it				
				this.companyService.addCompany(c);
				errCode.setCode(0);
				errCode.setMessage("Operation Success");
				
			} else {
				// existing company, call update
				if (this.companyService.getCompanyById(c.getId()).size() > 0) {
					this.companyService.updateCompany(c);
					errCode.setCode(0);
					errCode.setMessage("Operation Success");
				} else {
					errCode.setCode(3);
					errCode.setMessage("ID does not exist");
				}
			}
		}

		return errCode;
	}

	// For get company list
	@RequestMapping(value = "/company", method = RequestMethod.GET)
	public @ResponseBody List<Company> listCompanys(Model model) {
		List<Company> cList = this.companyService.listCompany();
		
		return cList;
	}

	// For delete company
	@RequestMapping("/remove/{id}")
	public @ResponseBody Message removeCompany(@PathVariable("id") int id) {
		Message errCode = new Message();
		if (this.companyService.getCompanyById(id).size() > 0) {
			this.companyService.removeCompany(id);
			errCode.setCode(2);
			errCode.setMessage("Delete success");
		} else {
			errCode.setCode(3);
			errCode.setMessage("ID does not exit");
		}
		return errCode;
	}
	
	// For company detail
	@RequestMapping("/detail/{id}")
	public @ResponseBody Message detailCompany(@PathVariable("id") int id) {
		Message errCode = new Message();
		if (this.companyService.getCompanyById(id).size() > 0) {
			errCode.setCode(4);
			errCode.setMessage("Company Detail");
			errCode.setDetail(this.companyService.getCompanyById(id));
		} else {
			errCode.setCode(3);
			errCode.setMessage("ID does not exist");
		}
		return errCode;
	}
}