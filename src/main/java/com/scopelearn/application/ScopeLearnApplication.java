package com.scopelearn.application;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages="com.scopelearn.appliation")
@EnableJpaRepositories
@EnableAutoConfiguration
public class ScopeLearnApplication // extends SpringBootServletInitializer
{
	 private static final Logger LOGGER = LogManager.getLogger(ScopeLearnApplication.class);
	public static void main(String[] args) {
	
		SpringApplication.run(ScopeLearnApplication.class, args);
		LOGGER.info("ScopeLearnApplication----------END");
		
	}
	
	// @Override
	protected SpringApplicationBuilder
	  configure(SpringApplicationBuilder builder) {
	  
	  return builder.sources(ScopeLearnApplication.class); }
	 

}
