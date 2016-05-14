package com.autobazaar.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.autobazaar.model.Address;
import com.autobazaar.model.Item;
import com.autobazaar.model.Product;
import com.autobazaar.model.ShoppingCart;
import com.autobazaar.service.ProductService;
@Controller
//@RequestMapping(value = "/Shoppingcart")
@Component
public class ShoppingCartController {
	
	
	
	@Autowired
	private ProductService service;
ShoppingCart cart;
	//@SuppressWarnings("unchecked")
	@RequestMapping("/Order/{pid}")	
	public String ordernow(@PathVariable(value = "pid") int pid, ModelMap mm, HttpSession session) {

	 if (session.getAttribute("cart") == null) {
	  List<Item> listcart = new ArrayList();
		 cart=new ShoppingCart();
		 

	  listcart.add(new Item(this.service.getProduct(pid), 1));
		cart.setListitem(listcart); 
	  session.setAttribute("cart", cart);
	 } else 
	 {
	  cart = (ShoppingCart) session.getAttribute("cart");
	  List<Item> listcart=cart.getListitem();
	  // using method isExisting here
	  int index = isExisting(pid, listcart);
	  if (index == -1)
	   listcart.add(new Item(this.service.getProduct(pid), 1));
	  else {
		int quantity = listcart.get(index).getQuantity() + 1;
	   listcart.get(index).setQuantity(quantity);
	  }
cart.setListitem(listcart);
	  session.setAttribute("cart", cart);
	 }

	 return "redirect:/memberShip"; // page name
	}

	public ShoppingCart initFlow() {
		//System.out.println(product.getPname());
		System.out.println("Data sply to flow");
		return cart;

	}

	public Address getaddress() {
		//System.out.println(product.getPname());
		System.out.println("Data sply to flow");
		return new Address();

	}
	

/*	@SuppressWarnings("unchecked")*/
	/*@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)*/
	@RequestMapping(value = "/delete/{pid}")
	public void delete(@PathVariable(value = "pid") int pid, HttpSession session){
		cart = (ShoppingCart) session.getAttribute("cart");
		
		List<Item> listcart = (List<Item>) cart.getListitem();

	 int index = isExisting(pid, listcart);
	 listcart.remove(index);
	 cart.setListitem(listcart);
	 
	 session.setAttribute("cart", cart);
	 System.out.println("delete");
	 this.enterflow();
	}

	public ModelAndView enterflow(){
		System.out.println("redirecting to flow");
		ModelAndView v=new ModelAndView("memberShip");
	 return v; // page name
		}
	
	
	@SuppressWarnings("unchecked")
	private int isExisting(int id, List<Item> pcart) {

	

	 for (int i = 0; i < pcart.size(); i++)

	  if (pcart.get(i).getP().getPid()== id)
	   return i;
	 return -1;
	}

	}
