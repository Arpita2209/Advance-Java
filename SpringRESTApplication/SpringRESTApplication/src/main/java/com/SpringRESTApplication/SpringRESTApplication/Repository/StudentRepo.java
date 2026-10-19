package com.SpringRESTApplication.SpringRESTApplication.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.SpringRESTApplication.SpringRESTApplication.Entity.Student;

@Repository
public interface StudentRepo extends CrudRepository<Student, Integer> {

}
