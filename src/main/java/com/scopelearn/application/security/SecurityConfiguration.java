/*
 * package com.scopelearn.application.security;
 * 
 * import javax.sql.DataSource;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.beans.factory.annotation.Value; import
 * org.springframework.context.annotation.Configuration; import
 * org.springframework.security.config.annotation.authentication.builders.
 * AuthenticationManagerBuilder; import
 * org.springframework.security.config.annotation.web.builders.HttpSecurity;
 * import
 * org.springframework.security.config.annotation.web.builders.WebSecurity;
 * import org.springframework.security.config.annotation.web.configuration.
 * EnableWebSecurity; import
 * org.springframework.security.config.annotation.web.configuration.
 * WebSecurityConfigurerAdapter; import
 * org.springframework.security.core.userdetails.UserDetailsService; import
 * org.springframework.security.web.util.matcher.AntPathRequestMatcher;
 * 
 * @Configuration
 * 
 * @EnableWebSecurity public class SecurityConfiguration extends
 * WebSecurityConfigurerAdapter {
 * 
 * @Autowired private UserDetailsService userDetailsService;
 * 
 * @Autowired private DataSource dataSource;
 * 
 * @Value("${spring.queries.users-query}") private String usersQuery;
 * 
 * @Override protected void configure(AuthenticationManagerBuilder auth) throws
 * Exception { auth.jdbcAuthentication() .usersByUsernameQuery(usersQuery)
 * .dataSource(dataSource); }
 * 
 * @Override protected void configure(HttpSecurity http) throws Exception {
 * http.csrf().disable(); }
 * 
 * @Override public void configure(WebSecurity web) throws Exception { web
 * .ignoring() .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**",
 * "/images/**"); }
 * 
 * // @Autowired // public void configureGlobal(AuthenticationManagerBuilder
 * auth) throws Exception { // auth.userDetailsService(userDetailsService); // }
 * }
 */