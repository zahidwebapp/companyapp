package com.zcompany.zapp.model;

import java.util.List;

public class Message { 
    
    private int code; 
	private String message;
	private List<Company> detail;
	
    public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	public List<Company> getDetail() {
		return detail;
	}
	public void setDetail(List<Company> detail) {
		this.detail = detail;
	}
    
    
}
