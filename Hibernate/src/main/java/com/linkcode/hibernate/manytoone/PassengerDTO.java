package com.linkcode.hibernate.manytoone;



import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PassengerDTO {
	
	@Id
	private int pid;
	private String name;
	private int age;
	private String contact;
	
	@ManyToOne
	private TrainDTO train;
}
