
  package com.scopelearn.application.config;
  
  import org.springframework.context.annotation.Bean;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
  
  public class WebMvcConfig implements WebMvcConfigurer {
  
	  @Override
	    public void addViewControllers(ViewControllerRegistry registry) {
	        registry.addViewController("/").setViewName("forward:/index.jsp");
	        registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
	       addViewControllers(registry);
	    }
  
  
  }
 