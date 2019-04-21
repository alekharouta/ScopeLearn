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
import com.scopelearn.application.serviceimpl.LoginServiceImpl;

@Controller
public class LoginController {

	@Autowired
	LoginServiceImpl loginService;

	@GetMapping("/login")
	public String login(ModelMap model, HttpServletRequest request) {

		return "login";
	}

	@PostMapping("/login")
	public String registration(@ModelAttribute("login") LoginDetails loginDetails,
			HttpServletRequest httpServletRequest) {

		if (httpServletRequest.getSession().getAttribute("username") == null) {
			httpServletRequest.getSession().invalidate();
			return "redirect:/login";
		}

		loginService.userLogin(loginDetails);

		return "redirect:/dashboard";
	}

	@GetMapping("/access-denied")
	public String accessDenied() {
		return "/error/access-denied";
	}
	
    @GetMapping(value="/admin/home")
    public String home(){
        
        return "admin/home";
    }
	
}
