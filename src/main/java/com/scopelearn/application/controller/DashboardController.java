/**
 * alekh
 */

package com.scopelearn.application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.scopelearn.application.dao.TempretureRepository;
import com.scopelearn.application.entity.Tempreture;

@RestController
public class DashboardController {

	@Autowired
	TempretureRepository tempRepo;
	
	@GetMapping("/h")
	public int get() {
		return 12;
	}
	
	
	@PostMapping("/tempreture")
	public Tempreture createEmployee(@RequestBody Tempreture temp) {
		if (temp != null) {
			tempRepo.save(temp);
		}
		return temp;
	}
	
	
	
	
}