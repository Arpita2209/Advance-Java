package com.linkcode.Spring.springCore.Annotations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class CarBean {
	
	@Value("101")
	private int cid;
	@Value("Brezza")
	private String cname;
	
//	@Autowired
	EngineBean engineBean; //Field Injection
	
//	@Autowired
//	CarBean(EngineBean B){
//		this.engineBean = B; //Constructor Injection
//	}
	
	@Autowired
	public void setEngine(EngineBean EB) { //Setter Injection
		this.engineBean = EB;
	}
	
	public void start() {
		System.out.println("Car Started With Engine : " + engineBean.getEngineType());
	}

}
