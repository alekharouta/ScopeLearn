package com.scopelearn.application.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.scopelearn.application.dao.TempretureRepository;
import com.scopelearn.application.dao.UploadRepository;
import com.scopelearn.application.entity.RegisterDetails;
import com.scopelearn.application.entity.Tempreture;
import com.scopelearn.application.entity.UploadFile;
import com.scopelearn.application.helper.ScheduledTasks;
import com.scopelearn.application.service.RegistrationService;
import com.scopelearn.application.serviceimpl.MailService;

@Controller
public class RegistrationController {
	@Autowired
	RegistrationService registrationService;

	@Autowired
	TempretureRepository tempRepo;

	@Autowired
	UploadRepository uploadRepository;

	@Autowired
	private MailService notificationService;

	@GetMapping(value = "/register")
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new RegisterDetails());
		return mav;
	}

	@PostMapping(value = "/register")
	public ModelAndView addUser(Model model, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") RegisterDetails user) {
		String data = registrationService.userRegister(user);
		List<Tempreture> list = tempRepo.findAll();
		if (data.equals("success")) {
			// notificationService.sendEmail(user.getEmail());
		}
		ModelAndView mav = new ModelAndView("dashboard");
		mav.addObject("username", user.getUsername());
		model.addAttribute("temp", list);
		return mav;
	}

	@GetMapping("/display")
	public @ResponseBody List<Tempreture> getTemp(HttpServletRequest request, HttpServletResponse response) {
		List<Tempreture> list = tempRepo.findAll();
		return list;
	}

	@PostMapping("/upload")
	public ModelAndView singleFileUpload(HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		ModelAndView mav = null;
		HttpSession httpSession = request.getSession(false);
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String username = (String) httpSession.getAttribute("loginUserName");
				UploadFile uploadFile = new UploadFile(username, bytes);
				uploadRepository.save(uploadFile);
				mav = new ModelAndView("dashboard");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
		mav = new ModelAndView("dashboard");
		 mav.addObject("file", "Upload File!!");
		}
		return mav;
	}

}