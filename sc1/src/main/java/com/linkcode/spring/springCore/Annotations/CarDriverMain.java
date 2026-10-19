package com.linkcode.Spring.springCore.Annotations;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class CarDriverMain {
	
	public static void main(String[] args) {
		AnnotationConfigApplicationContext annotationConfigApplicationContext = new AnnotationConfigApplicationContext(CarEngineConfig.class);
		
		CarBean carBean = annotationConfigApplicationContext.getBean(CarBean.class);
		System.out.println(carBean);
		
		EngineBean engineBean = annotationConfigApplicationContext.getBean(EngineBean.class);
		System.out.println(engineBean);
	}

}
