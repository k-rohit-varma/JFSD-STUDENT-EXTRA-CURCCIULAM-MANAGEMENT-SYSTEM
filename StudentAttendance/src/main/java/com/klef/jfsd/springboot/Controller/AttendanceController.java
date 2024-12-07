package com.klef.jfsd.springboot.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.Model.EventRegesteredStudent;
import com.klef.jfsd.springboot.Service.AttendanceService;

@RestController
@RequestMapping("Attendance")
public class AttendanceController {
	
	@Autowired
	AttendanceService service;
	
	@PostMapping("studentlist")
	public ResponseEntity<?> getStudentsList(@RequestParam String eventName)
	{
		List<Integer> list = service.getStudents(eventName);
		
		return new  ResponseEntity<>(list,HttpStatus.OK);
	}
	
}
