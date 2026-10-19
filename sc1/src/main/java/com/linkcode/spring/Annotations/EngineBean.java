package com.linkcode.spring.Annotations;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class EngineBean {
	@Value("v8 engine")
	private String enginetype;
}
