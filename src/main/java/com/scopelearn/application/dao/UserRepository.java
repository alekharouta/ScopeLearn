/**
 * alekh
 */

package com.scopelearn.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.scopelearn.application.entity.RegisterDetails;

@Repository("user")
public interface UserRepository extends JpaRepository<RegisterDetails, Long>{
	 
	RegisterDetails findByName(final String username);
	
	RegisterDetails findByMobile(final String mobilenumber);
}
