package com.scopelearn.application.entity;

import java.io.Serializable;
import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="images")
public class UploadFile implements Serializable{

	
	public UploadFile() {
		
	}

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(generator="increment")
	private Long id;
	
	@Column
	private String username;
	
	@Lob
    private byte[] data;

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

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "UploadFile [id=" + id + ", username=" + username + ", data=" + Arrays.toString(data) + "]";
	}

	public UploadFile(String username, byte[] data) {
		super();
		this.username = username;
		this.data = data;
	}
	
	

}
