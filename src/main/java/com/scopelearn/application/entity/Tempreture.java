package com.scopelearn.application.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tempreture")
public class Tempreture implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(generator="increment")
	private Long id;
	
	@Column
	private String city;
	@Column
	private String temp;
	@Column
	private String date;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	
	public Tempreture(Long id, String city, String temp, String date) {
		super();
		this.id = id;
		this.city = city;
		this.temp = temp;
		this.date = date;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Tempreture() {
		
	}
	@Override
	public String toString() {
		return "Tempreture [id=" + id + ", city=" + city + ", temp=" + temp + ", date=" + date + "]";
	}
	
	
	
	

}
