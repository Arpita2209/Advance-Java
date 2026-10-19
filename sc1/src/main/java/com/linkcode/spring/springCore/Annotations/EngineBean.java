package com.linkcode.Spring.springCore.Annotations;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class EngineBean {
	
	@Value("V8 Engine")
	private String engineType;

}
