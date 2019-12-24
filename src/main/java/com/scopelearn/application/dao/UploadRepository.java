package com.scopelearn.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.ResponseBody;

import com.scopelearn.application.entity.UploadFile;

@ResponseBody
public interface UploadRepository extends JpaRepository<UploadFile, Long>{
	
	@Query(value = "SELECT * FROM images p WHERE p.username= ?1", nativeQuery = true)
	UploadFile findByName(String username);
	

}
