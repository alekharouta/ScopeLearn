package com.scopelearn.application.serviceimpl;

import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scopelearn.application.dao.UserRepository;
import com.scopelearn.application.entity.LoginDetails;
import com.scopelearn.application.entity.RegisterDetails;
import com.scopelearn.application.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Autowired
	UserRepository userRepository;
	
	@Override
	public String userLogin(LoginDetails loginDetails) {
		
		String username=loginDetails.getUsername();
		
		RegisterDetails registerDetails=userRepository.findByName(username);
		
		if(null != registerDetails){
			Base64.Decoder decoder = Base64.getDecoder();  	       
	        String password = new String(decoder.decode(registerDetails.getPassword()));  
	        if(password.equals(loginDetails.getPassword())){
	        	
	        	return "successs";
	        }
		}
		
		return "failure";
	}

}
