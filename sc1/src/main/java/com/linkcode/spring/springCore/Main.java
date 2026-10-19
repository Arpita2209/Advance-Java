package com.linkcode.spring.springCore;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("studentConfig.xml");
		schoolBean school=context.getBean(schoolBean.class);
		System.out.println(school);
	}
	
}
