package com.linkcode.hibernate.onetoone;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

public class CarDTO {
	@Id
	
	private int cid;
	private String cname;
	private String color;
	private String engineType;
	
	@OneToOne
	private DriverDTO driver;
 
 
}
