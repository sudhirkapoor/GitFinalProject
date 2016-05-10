package com.autobazaar.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.autobazaar.model.Product;
import com.autobazaar.model.UserDetails;

@Repository
public class UserDAO implements UserDAOInterface {

	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Autowired
	public UserDAO(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/*Inserting user details into UserDetails table*/
	public void insertUserDetail(UserDetails user) {
		Session session=sessionFactory.getCurrentSession();
		session.save(user);		
		System.out.println("User DAO");
	}
	/*Retriving user detail from the table by suplied userid*/
	public UserDetails getUserDetail(String userid) {
		Session session=sessionFactory.getCurrentSession();
		UserDetails user=(UserDetails)session.load(UserDetails.class, new String(userid));
		return user;
	}

}
