package com.klef.jfsd.springboot.Communication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Email;
import com.klef.jfsd.springboot.model.Event;
import com.klef.jfsd.springboot.repository.EventRegesteredStudentRepository;
import com.klef.jfsd.springboot.service.EventService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MicroCommunication {
	
	
	@Autowired
	EventRegesteredStudentRepository repo;
	
	@Autowired
	EventService eveRepo;
	
	@Autowired
	RestTemplate restTemplate;
	
	@GetMapping("/getStudentsList")
	public ModelAndView attendanceList()
	{
		List<Event> ev= eveRepo.showAllEvents();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("TakeAttendance");
		mv.addObject("eventsList", ev);
		return mv;
	}
	
	@GetMapping("takeAttendance")
	public ModelAndView takeAttendance(@RequestParam String ename) {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("PostAttendance");
	    mv.addObject("ename", ename);
	    
	    String url = "http://localhost:1418/Attendance/studentlist?eventName=" + ename;
	    
	    // Define the request entity (if any additional headers or body is required, modify here)
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.APPLICATION_JSON);
	    HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
	    
	    // Make the HTTP POST request
	    ResponseEntity<List> response = restTemplate.exchange(
	        url,
	        HttpMethod.POST,
	        requestEntity,
	        List.class
	    );
	    
	    // Pass the response data to the view
	    if (response.getStatusCode() == HttpStatus.OK) {
	        mv.addObject("studentList", response.getBody());
	    } else {
	        mv.addObject("error", "Failed to fetch student list");
	    }
	    
	    return mv;
	}

	
}



//@PostMapping("/sending")
//public ModelAndView sendingEmail(HttpServletRequest request)
//{
//	String fromEmail="kunaparajurohitvarma@gmail.com";
//	String toEmail = request.getParameter("toEmail");
//	String subject = request.getParameter("subject");
//	String message = request.getParameter("message");
//	
//	Email e = new Email();
//	e.setFromEmail(fromEmail);
//	e.setMessage(message);
//	e.setSubject(subject);
//	e.setToEmail(toEmail);
//	
//	HttpHeaders headers = new HttpHeaders();
//	headers.setContentType(MediaType.APPLICATION_JSON);
//	
//	HttpEntity<Email> requestEntity = new HttpEntity<Email>(e,headers);
//	
//	String url="http://localhost:1234/mail/send";
//	ResponseEntity<String> res = restTemplate.exchange(url,HttpMethod.POST,requestEntity,String.class);
//	ModelAndView mv = new ModelAndView();
//	mv.setViewName("adminhome");
//	return mv;
//}
