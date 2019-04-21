/*
 * package com.scopelearn.application.config;
 * 
 * import org.springframework.context.annotation.ComponentScan; import
 * org.springframework.context.annotation.Configuration; import
 * org.springframework.transaction.annotation.EnableTransactionManagement;
 * import org.springframework.web.servlet.config.annotation.EnableWebMvc; import
 * org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
 * import
 * org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
 * import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
 * 
 * @Configuration
 * 
 * @EnableWebMvc
 * 
 * @EnableTransactionManagement
 * 
 * @ComponentScan("com.scopelearn.application") public class WebMvcConfig
 * implements WebMvcConfigurer {
 * 
 * @Override public void addResourceHandlers(ResourceHandlerRegistry registry) {
 * registry.addResourceHandler("/resources/**").addResourceLocations("/",
 * "/resources/");
 * registry.addResourceHandler("/webapp/**").addResourceLocations("/webapp/");
 * registry.addResourceHandler("/webjars/**").addResourceLocations("/webjars/");
 * }
 * 
 * @Override public void addViewControllers(ViewControllerRegistry registry) {
 * registry.addViewController("/").setViewName("index");
 * registry.addViewController("/registration").setViewName("registration");
 * registry.addViewController("/login").setViewName("login");
 * registry.addViewController("/accessDenied").setViewName("accessDenied"); }
 * 
 * 
 * }
 */