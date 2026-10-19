package com.linkcode.hibernate.Hibernate;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor

public class BookDTO {
	@Id
	private int bookid;
	private String bname;
	private String Author;
	private double price;
}
