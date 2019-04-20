package com.scopelearn.application.service;

import org.springframework.stereotype.Service;

import com.scopelearn.application.entity.RegisterDetails;

@Service
public interface RegistrationService {

	String userRegister(RegisterDetails registerDetails);
}
