package com.scopelearn.application.service;

import org.springframework.stereotype.Service;

import com.scopelearn.application.entity.LoginDetails;

public interface LoginService {

	 String userLogin(LoginDetails loginDetails);
		
}
