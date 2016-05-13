package com.autobazaar.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.autobazaar.model.UserDetails;
import com.autobazaar.service.UserService;

@Controller
public class UserController {
	UserService uservice;

	@Autowired
	public void setService(UserService uservice) {
		this.uservice = uservice;
	}

	/* Request mapping with Register spring form */
	@RequestMapping("/insertDetail")
	public String insertUserDetail(@Valid @ModelAttribute("user") UserDetails user, BindingResult result) {

		if (result.hasErrors()) {
			return "Register";
		}
		this.uservice.insertUserDetail(user);

		return "redirect:/index";
	}
	
	/*
	 * @RequestMapping(value = "/pageUser") public String getUser(Model model) {
	 * UserDetails user=new UserDetails(); model.addAttribute("user",user);
	 * 
	 * return "Admin"; }
	 */
}
