package com.klef.jfsd.springboot.ServiceImplementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.Repo.AttendanceRepo;
import com.klef.jfsd.springboot.Service.AttendanceService;

@Service
public class AttendanceServiceImpl implements AttendanceService {

	@Autowired
	AttendanceRepo repo;
	
	@Override
	public List<Integer> getStudents(String eventName) {
		List<Integer> stList=  repo.findStudentIdsByEventName(eventName);
		return stList;
	}

}
