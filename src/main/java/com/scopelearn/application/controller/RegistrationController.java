package com.scopelearn.application.controller;

import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.scopelearn.application.entity.RegisterDetails;
import com.scopelearn.application.service.RegistrationService;
import com.scopelearn.application.serviceimpl.MailService;

@Controller
public class RegistrationController {
	@Autowired
	RegistrationService registrationService;
	
	@Autowired
	private MailService notificationService;

	@GetMapping(value = "/register")
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new RegisterDetails());
		return mav;
	}

	@PostMapping(value = "/register")
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("user") RegisterDetails user) {
		String data=registrationService.userRegister(user);
		if(data.equals("success")){
		//	notificationService.sendEmail(user.getEmail());
		}
		return new ModelAndView("dashboard", "username", user.getUsername());
	}
}