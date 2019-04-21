package com.scopelearn.application.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.scopelearn.application.entity.RegisterDetails;
@Repository("registerRepository")
public interface UserRegisterRepository extends JpaRepository<RegisterDetails, Long>{
	
}
