package com.scopelearn.application.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.scopelearn.application.entity.RegisterDetails;

public interface UserRegisterRepository extends JpaRepository<RegisterDetails, Long>{
	
}
