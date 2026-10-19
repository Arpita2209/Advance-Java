package com.linkcode.Spring.springCore.XMLConfig;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
	
	public static void main(String[] args) {
		ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("studentConfig.xml");
		SchoolBean schoolBean = applicationContext.getBean(SchoolBean.class);
		System.out.println(schoolBean);
	}

}