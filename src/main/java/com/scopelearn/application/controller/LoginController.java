/**
 * alekh
 */

package com.scopelearn.application.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;
import org.hibernate.type.LocalDateType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.scopelearn.application.dao.UploadRepository;
import com.scopelearn.application.dao.UserRegisterRepository;
import com.scopelearn.application.entity.LoginAudit;
import com.scopelearn.application.entity.LoginDetails;
import com.scopelearn.application.entity.RegisterDetails;
import com.scopelearn.application.entity.UploadFile;
import com.scopelearn.application.serviceimpl.LoginServiceImpl;

@Controller
public class LoginController {

	@Autowired
	LoginServiceImpl loginService;
	
	@Autowired
	UploadRepository uploadRepository;
	
	@Autowired
	UserRegisterRepository userRegisterRepository;

	@GetMapping("index")
	public String welome(ModelMap model, HttpServletRequest request) {
		model.addAttribute("index");
		return "index";
	}
	
	@GetMapping("calculator")
	public String calculator(ModelMap model, HttpServletRequest request) {
		model.addAttribute("calculator");
		return "calculator";
	}

	@GetMapping("login")
	public String login(Model model,HttpServletRequest request) {
		model.addAttribute("login", new LoginDetails()); 
		return "login";
	}

	@PostMapping("/login")
	public ModelAndView  registration(Model model, HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") LoginDetails login, BindingResult result) throws IOException {
		ModelAndView mav = null;
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("loginUserName", login.getUsername());
		String ipAddress = request.getRemoteAddr();
		String data = loginService.userLogin(login);
		LoginAudit loginAudit=new LoginAudit();
		LocalDateTime myDateObj = LocalDateTime.now();
	    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
	    String formattedDate = myDateObj.format(myFormatObj);
	    UploadFile upFile=uploadRepository.findByName(login.getUsername());
	    
		if (null != data && data.equals("success")) {
			
			if(loginAudit!=null){
				loginAudit.setIpaddress(ipAddress);
				loginAudit.setStatus(data);
				loginAudit.setUsername(login.getUsername());
				loginAudit.setDate(formattedDate);
				
			}
			
			loginService.loginAudit(loginAudit);
			mav = new ModelAndView("dashboard");
			mav.addObject("username", login.getUsername().toUpperCase());
			byte[] encodeBase64 =null;
			if(upFile==null){
				InputStream initialStream = new FileInputStream(new File("src/main/webapp/images/person.png"));
					    byte[] buffer = new byte[initialStream.available()];
					    initialStream.read(buffer);
		        
		        encodeBase64 = Base64.encodeBase64(buffer);
		        mav.addObject("isPicAvailable", "no");
			}else{
			 encodeBase64 = Base64.encodeBase64(upFile.getData());
			 mav.addObject("isPicAvailable", "yes");
			}
            String base64Encoded = new String(encodeBase64, "UTF-8");
  
			mav.addObject("profile", base64Encoded);
			
		} else {
			if(loginAudit!=null){
				loginAudit.setIpaddress(ipAddress);
				loginAudit.setStatus(data);
				loginAudit.setUsername(login.getUsername());
				loginAudit.setDate(formattedDate);
				loginService.loginAudit(loginAudit);
			}
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
	
	@GetMapping(value = "forgotpassword")
	public String getUserKBA(Model model,@RequestParam(value ="username", defaultValue="alekh") String username) {
		model.addAttribute("username", username); 
		return "forgotpassword";
	}
	
	
	@PostMapping(value = "/forgotpasswordData")
	public @ResponseBody String setNewPassword(HttpServletRequest request, HttpServletResponse response) {

		HttpSession httpSession=request.getSession(false);
		String username=(String) httpSession.getAttribute("username");
		String data=null;
		if (username==null ||!username.equals("")){
			data="User";
			return data;
		}
		RegisterDetails registerDetails=userRegisterRepository.findByName(username);
		String[] kba=registerDetails.getText().split(",");
		if (kba[1]!=null||kba[1].equals("") && kba[0]!=null||kba[0].equals("")) {
			
			data=kba[0];
			
		} else {
			data="NA";
		}
		
		return data;
   }
   
	
	
	
	

}
