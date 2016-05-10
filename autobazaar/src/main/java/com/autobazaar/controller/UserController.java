package com.autobazaar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.autobazaar.model.UserDetails;
import com.autobazaar.service.UserService;

public class UserController {
	UserService uservice;

	@Autowired
	@Qualifier
	public void setService(UserService uservice) {
		this.uservice = uservice;
	}
	@RequestMapping("/insertDetail")
	public String insertUserDetail() {
		System.out.println("User controller");
		//System.out.println(user.getFname());
		UserDetails u=new UserDetails();
		u.setFname("Sudhir");
		u.setLname("Kapoor");
		u.setAddress("");
		u.setCity("");
		u.setPassword("");
		u.setState("");
		u.setUserid("");
		u.setZipcode(1213);
			this.uservice.insertUserDetail(u);
		
		return "redirect:/Register";
	}
	/*
	@RequestMapping(value = "/pageUser")
	public String getUser(Model model) {
		UserDetails user=new UserDetails();
		model.addAttribute("user",user);
		
		return "Admin";
	}
	*/
}
