/**
 * alekh
 */

package com.scopelearn.application.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.scopelearn.application.entity.LoginDetails;
import com.scopelearn.application.serviceimpl.LoginServiceImpl;

@Controller
public class LoginController {

	@Autowired
	LoginServiceImpl loginService;

	@GetMapping("index")
	public String welome(ModelMap model, HttpServletRequest request) {
		model.addAttribute("index");
		return "index";
	}

	@GetMapping("login")
	public String login(Model model,HttpServletRequest request) {
		model.addAttribute("login", new LoginDetails()); 
		return "login";
	}

	@PostMapping("/login")
	public ModelAndView  registration(Model model, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") LoginDetails login, BindingResult result) {
		ModelAndView mav = null;
		String data = loginService.userLogin(login);
		if (null != data && data.equals("success")) {
			mav = new ModelAndView("dashboard");
			mav.addObject("username", login.getUsername());
		} else {
			mav = new ModelAndView("login");
		    mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}

	@GetMapping("/access-denied")
	public String accessDenied() {
		return "/error/access-denied";
	}

	@GetMapping(value = "/admin/home")
	public String home() {

		return "admin/home";
	}

}
