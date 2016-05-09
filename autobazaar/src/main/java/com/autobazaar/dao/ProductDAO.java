package com.autobazaar.dao;

import java.util.*;



import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import org.hibernate.Session;
import com.autobazaar.model.Product;
@Repository
public class ProductDAO implements ProductDAOInterface {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Autowired
	public ProductDAO(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
/*Retriving all products from the table*/
	public List<Product> getAllProduct() {
		Session session=sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Product");
		List<Product> p=q.list();
		return p;
	}
	/*Update specific product into the table*/
	public void updateProduct(Product p) {
		System.out.println("Update dao before session start");
		Session session=sessionFactory.getCurrentSession();
		System.out.println("Update dao after session start");
		session.update(p);
		
	}
	/*Delete specific product into the table*/
	public void deleteProduct(int pid) {
		Session session=sessionFactory.getCurrentSession();
		Product p=(Product)session.load(Product.class, new Integer(pid));
		session.delete(p);
		
	}
	/*Retriving specific product from the table by suplied product id*/
	public Product getProduct(int pid) {
		System.out.println("getProduct called");
		Session session=sessionFactory.getCurrentSession();
		Product p=(Product)session.load(Product.class, new Integer(pid));
		System.out.println(p.getPname());
		return p;
	}
	/*insert record into the table*/
	public void insertProduct(Product p) {
		Session session=sessionFactory.getCurrentSession();
		session.save(p);
		
	}
	
	
	

}
