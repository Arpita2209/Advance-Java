package com.linkcode.spring.Annotations;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class CarDriverMain {

    public static void main(String[] args) {

        AnnotationConfigApplicationContext context =
                new AnnotationConfigApplicationContext(CarEngineConfig.class);

        carBean car = context.getBean(carBean.class);

        System.out.println(car);

        EngineBean engine = context.getBean(EngineBean.class);

        System.out.println(engine);

        context.close();
    }
}