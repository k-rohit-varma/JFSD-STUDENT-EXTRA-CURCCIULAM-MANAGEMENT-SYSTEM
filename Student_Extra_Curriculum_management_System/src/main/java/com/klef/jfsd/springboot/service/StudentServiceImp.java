package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImp implements StudentService {

	@Autowired
	StudentRepository studentRepository;
	@Override
	public Student checkStudentLogin(String id, String password) {
		return studentRepository.checkStudentLogin(id, password);
	}
	
	@Override
	public boolean checkEmail(String email) {
		
		 Optional<Student> stu = studentRepository.findByEmail(email);
		    return stu.isPresent(); 
	}
	
	public boolean updatePassword(String email, String newPassword) {
        int updated = studentRepository.updatePassword(email, newPassword);
        return updated > 0; 
    }

	@Override
	public Student getStudentById(String id) {
		return studentRepository.findStudentById(id);
	}

	@Override
	public Student SaveStudent(Student stu) {
		return studentRepository.save(stu);
	}

	
	
}
