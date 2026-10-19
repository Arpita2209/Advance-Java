package com.linkcode.hibernate.manytoone;



import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrainDTO {
	
	@Id
	private int tid;
	private String name;
	private String route;
	private String departure;
	
}