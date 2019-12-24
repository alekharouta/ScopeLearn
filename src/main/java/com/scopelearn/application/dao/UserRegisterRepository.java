package com.scopelearn.application.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.scopelearn.application.entity.RegisterDetails;
@Repository("registerRepository")
public interface UserRegisterRepository extends JpaRepository<RegisterDetails, Long>{
	
	@Query(value = "SELECT * FROM user p WHERE p.user_name= ?1", nativeQuery = true)
	RegisterDetails findByName(String username);
	
}
