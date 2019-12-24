package com.scopelearn.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.scopelearn.application.entity.Tempreture;

@Repository("tempretureRepository")
public interface TempretureRepository extends JpaRepository<Tempreture, Long>{

}
