package com.scopelearn.application.helper;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.logging.log4j.core.config.plugins.validation.constraints.ValidHost;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * @alekh
 */
@Component
public class ScheduledTasks {

	private static final SimpleDateFormat dateFormat = new SimpleDateFormat(
			"MM/dd/yyyy HH:mm:ss");


	@Scheduled(cron = "*/10 * * * * *")
	public void performTaskUsingCron() {

		System.out.println("Regular task performed using Cron at "+ dateFormat.format(new Date()));
	/*	 try {
		File file = new File("D:\\alekh.txt"); 
		  
		  BufferedReader br = new BufferedReader(new FileReader(file)); 
		  
		  String st; 
		 
			while ((st = br.readLine()) != null) 
			    System.out.println(st);
		} catch (IOException e) {
			e.printStackTrace();
		} */
		  } 

}