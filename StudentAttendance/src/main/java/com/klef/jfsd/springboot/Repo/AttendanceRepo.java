package com.klef.jfsd.springboot.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.Model.EventRegesteredStudent;

@Repository
public interface AttendanceRepo extends JpaRepository<EventRegesteredStudent, Integer> {

	@Query("SELECT e.studentId FROM EventRegesteredStudent e WHERE e.eventName = ?1")
    List<Integer> findStudentIdsByEventName(String eventName);
	
}
