package com.SpringRESTApplication.SpringRESTApplication.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringRESTApplication.SpringRESTApplication.Entity.Student;
import com.SpringRESTApplication.SpringRESTApplication.Repository.StudentRepo;

@Service
public class StudentService {
	@Autowired
	private StudentRepo repository;

	public void addStudent(Student student) {
		repository.save(student);
		
	}

}
