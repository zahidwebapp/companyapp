package com.zcompany.zapp.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="companies")
public class Company {
 
    @Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    
    @NotNull
    @NotEmpty
    @Size(min = 2, max = 255)
    private String name;  
    
    @NotNull
    @NotEmpty
    private String address;
    
    @NotNull
    @NotEmpty
    @Size(min = 2, max = 100)
    private String city;
    
    @NotNull
    @NotEmpty
    @Size(min = 2, max = 100)
    private String country;  
 
    @Email
    private String email;   
    private String phone;   
    private String director;     
     
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	@Override
    public String toString(){
        return "id="+id+", name="+name+", address="+address+", city="+city+", country="+country+", email="+email+", director="+director;
    }
}
