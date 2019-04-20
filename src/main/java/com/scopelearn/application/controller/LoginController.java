/**
 * alekh
 */

package com.scopelearn.application.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.scopelearn.application.entity.LoginDetails;
import com.scopelearn.application.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;

    @GetMapping("/login.htm")
    public String login(ModelMap model, HttpServletRequest request) {        	

        return "login";
    }
	
    @PostMapping("/login.htm")
    public String registration(@ModelAttribute("login") LoginDetails loginDetails,HttpServletRequest httpServletRequest) {
       
    	if (httpServletRequest.getSession().getAttribute("username") == null)
        {
    		httpServletRequest.getSession().invalidate();
          return "redirect:/login.htm";
        }

    	loginService.userLogin(loginDetails);

        return "redirect:/dashboard";
    }

}
