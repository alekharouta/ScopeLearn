package com.scopelearn.application.controller;

import java.util.Base64;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.scopelearn.application.entity.RegisterDetails;
import com.scopelearn.application.service.RegistrationService;
import com.scopelearn.application.utility.RegisterBO;
@Controller
public class RegistrationController {

	@Autowired
	RegistrationService registrationService;
		
	 @GetMapping("/register.htm")
	    public String getRegistrationForm(ModelMap model, HttpServletRequest request) {
	        

	        return "register";
	    }
		
	    @PostMapping("/register.htm")
	    public String registration(@ModelAttribute("register") RegisterBO register) {

	        Base64.Encoder encoder = Base64.getEncoder(); 
	        RegisterDetails registerDetails=new RegisterDetails();
	        String encodedPassword = encoder.encodeToString(register.getPassword().getBytes()); 
	        registerDetails.setUsername(register.getUsername());
	        registerDetails.setMobilenumber(register.getMobilenumber());
	        registerDetails.setEmailId(register.getEmailId());
	        registerDetails.setPassword(encodedPassword);
	        registerDetails.setGender(register.getGender());

	        return "redirect:/login";
	    }
	
}
