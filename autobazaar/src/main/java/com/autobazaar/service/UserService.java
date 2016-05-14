package com.autobazaar.service;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.autobazaar.dao.UserDAO;
import com.autobazaar.model.Address;
import com.autobazaar.model.UserDetails;
@Service
@Transactional
public class UserService {
	UserDAO udao;

	/*public void setDao(UserDAO udao) {
		this.udao = udao;
	}*/

	public void setUdao(UserDAO udao) {
		this.udao = udao;
	}

	@Autowired
	public UserService(UserDAO udao) {
		this.udao = udao;
	}
	
	/* Calling UserDAO insertUserDetail method for storing one user values */
	public void insertUserDetail(UserDetails user) {
		System.out.println("User service");
			udao.insertUserDetail(user);
	}
	
	
	/*Retriving user detail from the table by suplied userid*/
	public UserDetails getUserDetail(String userid) {
		return udao.getUserDetail(userid);
	}
	
	public String insertaddress(Address add) {
		System.out.println("User service");
		udao.insertaddress(add);
		return	"success";
	}
	
}
