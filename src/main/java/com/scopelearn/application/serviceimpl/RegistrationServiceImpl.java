package com.scopelearn.application.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;

import com.scopelearn.application.dao.UserRegisterRepository;
import com.scopelearn.application.entity.RegisterDetails;
import com.scopelearn.application.service.RegistrationService;

public class RegistrationServiceImpl implements RegistrationService{

	@Autowired
	UserRegisterRepository userRegisterRepository;
	
	@Override
	public String userRegister(RegisterDetails registerDetails) {
		
		RegisterDetails regDetails=userRegisterRepository.save(registerDetails);
		if(regDetails==null){
			
			return "registration failed";
		}
		return "registration success";
	}

}
