package com.SpringRESTApplication.SpringRESTApplication.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.SpringRESTApplication.SpringRESTApplication.Entity.Student;
import com.SpringRESTApplication.SpringRESTApplication.Service.StudentService;

@RequestMapping
@RestController
public class Controller {
	 @Autowired
	    private StudentService service;
	
	@GetMapping
	public String Test() {
		return "Restfull";
	}
	
	  
	 
	    @PostMapping
	    public String addStudent(@RequestBody Student student) {
	        service.addStudent(student);
	        return "data added";
	    }
}
