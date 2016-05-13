package com.autobazaar.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import com.autobazaar.model.Item;
import com.autobazaar.model.Product;

@Controller
public class ShoppingCartController {
	Product product = new Product();

	public List<Item> OrderNow(@PathVariable("product") Product product, Model model) {
		List<Item> cart=null ;
		if (cart==null)
		{
			cart= new ArrayList<Item>();
		// cart.add(new Item(product.getPid(),quantity))
		//insted of product id i need to send produc object with spesific product
		//like ineed to accept product from product order details or i need to sent the
		//product objeect from the Spring flow when user click on add to cart button
		cart.add(new Item(product, 1));
	
		}
		else
		{
			//cart=session
			cart.add(new Item(product, 1));
		}
		return cart;
			
		
	}

}
