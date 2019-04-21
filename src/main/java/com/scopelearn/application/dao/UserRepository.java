/**
 * alekh
 */

package com.scopelearn.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.scopelearn.application.entity.RegisterDetails;

public interface UserRepository extends JpaRepository<RegisterDetails, Long>{
	 
	 @Query("SELECT p FROM RegisterDetails p WHERE p.username=:username")
	 RegisterDetails findByName(@Param("username")final String username);	
	
}
