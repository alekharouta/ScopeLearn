/**
 * alekh
 */

package com.scopelearn.application.controller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.scopelearn.application.entity.LoginDetails;

public class LoginController {
	

    @GetMapping("/login")
    public String login(Model model) {
        

        return "login";
    }
	
    @PostMapping("/login")
    public String registration(@ModelAttribute("login") LoginDetails loginDetails, BindingResult bindingResult) {
       

        if (bindingResult.hasErrors()) {
            return "login";
        }


        return "redirect:/dashboard";
    }

}
