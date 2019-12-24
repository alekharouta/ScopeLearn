package com.scopelearn.application.helper;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.apache.logging.log4j.core.config.plugins.validation.constraints.ValidHost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.scopelearn.application.dao.TempretureRepository;
import com.scopelearn.application.entity.Tempreture;

/**
 * @alekh
 */
@Component
public class ScheduledTasks {

	private static final SimpleDateFormat dateFormat = new SimpleDateFormat(
			"MM/dd/yyyy HH:mm:ss");

	@Autowired
	TempretureRepository tempRepo;

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
		Random randomObj = new Random();
			List<Tempreture>list=tempRepo.findAll();
			
			for(int i=0;i<list.size();i++){
				Tempreture temp=list.get(i);
				int randomNum = randomObj.nextInt((50 - 10)) + 10;				
				temp.setTemp(String.valueOf(randomNum));
				//tempRepo.save(temp);
			}
			
			
			getTemp(list);		
		  } 
	
	public List<Tempreture> getTemp(List<Tempreture> temp){
		for(int i=0;i<temp.size();i++){
			//System.out.println(temp.get(i));
		}
		return temp;
	}
	
}