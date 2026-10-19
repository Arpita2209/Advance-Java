package com.linkcode.spring.Annotations;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.Data;


@Data
@Component
public class carBean {
	@Value("101")
	private int cid;
	@Value("brezza")
	private String cname;
	
}
