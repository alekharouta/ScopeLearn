package com.scopelearn.application.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.scopelearn.application.entity.LoginAudit;

@Repository("auditRepository")
public interface AuditRepository extends JpaRepository<LoginAudit, Long>{

}
