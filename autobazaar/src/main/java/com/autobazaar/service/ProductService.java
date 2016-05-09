package com.autobazaar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.autobazaar.dao.ProductDAO;
import com.autobazaar.model.Product;

@Service
@Transactional
public class ProductService {

	ProductDAO dao;

	public void setDao(ProductDAO dao) {
		this.dao = dao;
	}

	@Autowired
	public ProductService(ProductDAO dao) {
		this.dao = dao;
	}

	/* Calling DAO delete method for removing a product */
	public void deleteProduct(int pid) {
		dao.deleteProduct(pid);
	}

	/* Calling DAO update method for updating existing product details */
	public void updateProduct(Product p) {
		dao.updateProduct(p);
	}

	/* Calling DAO getProduct method for retreving one product */
	public Product getProduct(int pid) {
		Product p = dao.getProduct(pid);
		return p;
	}

	/* Calling DAO getAllProducts method for retreving all products */
	public List<Product> getAllProduct() {
		return dao.getAllProduct();

	}

	/* Calling DAO insertProducts method for storing one product value */
	public void insertProduct(Product p) {
		dao.insertProduct(p);
	}

}
