/*
 * package com.scopelearn.application.security;
 * 
 * import java.util.HashSet; import java.util.Set;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.security.core.GrantedAuthority; import
 * org.springframework.security.core.authority.SimpleGrantedAuthority; import
 * org.springframework.security.core.userdetails.UserDetails; import
 * org.springframework.security.core.userdetails.UserDetailsService; import
 * org.springframework.security.core.userdetails.UsernameNotFoundException;
 * import org.springframework.transaction.annotation.Transactional;
 * 
 * import com.scopelearn.application.dao.UserRepository; import
 * com.scopelearn.application.entity.RegisterDetails;
 * 
 * public class UserDetailsServiceImpl implements UserDetailsService {
 * 
 * @Autowired UserRepository userRepository;
 * 
 * @Transactional(readOnly = true) public UserDetails loadUserByUsername(String
 * username) throws UsernameNotFoundException { RegisterDetails registerDetails
 * = userRepository.findByName(username);
 * 
 * Set<GrantedAuthority> grantedAuthorities = new HashSet();
 * 
 * grantedAuthorities.add(new
 * SimpleGrantedAuthority(registerDetails.getUsername()));
 * 
 * return new
 * org.springframework.security.core.userdetails.User(registerDetails.
 * getUsername(), registerDetails.getPassword(), grantedAuthorities); } }
 */