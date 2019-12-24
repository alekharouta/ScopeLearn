package com.scopelearn.application.entity;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Audit")
public class LoginAudit implements Serializable{

	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(generator="increment")
	private Long id;
	
	@Column
	private String username;

	@Column
	private String status;
	
	@Column
	private String ipaddress;
	
	@Column(name = "login_date")
    String date;

	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public LoginAudit() {
		
	}

	

	public LoginAudit(Long id, String username, String status, String ipaddress, String date) {
		super();
		this.id = id;
		this.username = username;
		this.status = status;
		this.ipaddress = ipaddress;
		this.date = date;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getIpaddress() {
		return ipaddress;
	}

	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}


}
