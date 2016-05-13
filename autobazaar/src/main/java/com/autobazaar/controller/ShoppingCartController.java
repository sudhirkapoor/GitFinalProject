package com.autobazaar.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.autobazaar.model.Item;
import com.autobazaar.model.Product;
import com.autobazaar.service.ProductService;
@Controller
@RequestMapping(value = "/Shoppingcart")
public class ShoppingCartController {
	
	
	
	@Autowired
	private ProductService service;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/Order/{id}", method = RequestMethod.GET)
	public String ordernow(@PathVariable(value = "pid") int pid, ModelMap mm, HttpSession session) {

	 if (session.getAttribute("cart") == null) {
	  List<Item> cart = new ArrayList();

	  cart.add(new Item(this.service.getProduct(pid), 1));
	  session.setAttribute("cart", cart);
	 } else 
	 {
	  List<Item> cart = (List<Item>) session.getAttribute("cart");

	  // using method isExisting here
	  int index = isExisting(pid, session);
	  if (index == -1)
	   cart.add(new Item(this.service.getProduct(pid), 1));
	  else {
		int quantity = cart.get(index).getQuantity() + 1;
	   cart.get(index).setQuantity(quantity);
	  }

	  session.setAttribute("cart", cart);
	 }

	 return "shipping"; // page name
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable(value = "id") int id, HttpSession session) {
	 List<Item> cart = (List<Item>) session.getAttribute("cart");

	 int index = isExisting(id, session);
	 cart.remove(index);
	 session.setAttribute("cart", cart);
	 return "cart";
	}

	@SuppressWarnings("unchecked")
	private int isExisting(int id, HttpSession session) {

	List<Item> pcart = (List<Item>) session.getAttribute("cart");

	 for (int i = 0; i < pcart.size(); i++)

	  if (pcart.get(i).getP().getPid()== id)
	   return i;
	 return -1;
	}

	}
