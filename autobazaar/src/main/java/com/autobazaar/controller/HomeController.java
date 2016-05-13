package com.autobazaar.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.autobazaar.model.CartList;
import com.autobazaar.model.Item;
import com.autobazaar.model.Product;
import com.autobazaar.model.UserDetails;
import com.autobazaar.service.ProductService;
import com.google.gson.Gson;

@Controller
@Component
public class HomeController {

	ProductService service;

	@Autowired
	public void setService(ProductService service) {
		this.service = service;
	}

	/* Mapping request for index page */
	@RequestMapping("/")
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	/* Mapping request for index page */
	@RequestMapping("/index")
	public ModelAndView indexPage1() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	@RequestMapping("/product/index")
	public ModelAndView indexPage2() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}

	/* Mapping request for Product page */
	@RequestMapping("/product")
	public ModelAndView productPage() {
		List<Product> list = service.getAllProduct();
		String json = new Gson().toJson(list);
		System.out.println(json);
		ModelAndView mv = new ModelAndView("Product");
		System.out.println(json);
		mv.addObject("listProduct", json);
		return mv;
	}

	/* Mapping request for category wise Product page */
	@RequestMapping("/product/{pname}")
	public ModelAndView Product_Page2(@PathVariable("pname") String Prodname) {
		List<Product> filteredlist = new ArrayList<Product>();
		List<Product> list = service.getAllProduct();
		Iterator<Product> i = list.iterator();
		while (i.hasNext()) {
			Product p = (Product) i.next();
			if (p.getPcategory().equals(Prodname)) {
				filteredlist.add(p);
			}
		}
		String json = new Gson().toJson(filteredlist);
		ModelAndView mv = new ModelAndView("Product");
		mv.addObject("listProduct", json);
		return mv;
	}

	/* Mapping request for Login page */
	@RequestMapping("/Login")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("Login");
		return mv;
	}

	/* Mapping request for Register page */
	@RequestMapping(value = "/Register")
	public String registerPage(Model model) {
		UserDetails user = new UserDetails();
		model.addAttribute("user", user);
		return "Register";
	}

	/* Mapping request for ProductDetail page */
	/*
	 * @RequestMapping("/product/ProductDetails")
	 * 
	 * public String ProductDetailPage(@ModelAttribute("p") Product p,Model m )
	 * { m.addAttribute("product",p); return "ProductDetail"; }
	 */

	Product product;
	/* Mapping request for ProductDetail page */
	List<Item> cart = null;

	/*
	 * @RequestMapping("/ProductDetail")
	 * 
	 * public ModelAndView ProductDetailPage(@ModelAttribute("product") Product
	 * product,HttpServletRequest request ) { this.product = product; return new
	 * ModelAndView("ProductDetail"); }
	 */

	HttpSession ss;

	@RequestMapping("/ProductDetail")

	public ModelAndView ProductDetailPage(@ModelAttribute("product") Product product, HttpServletRequest request
			) {
		this.product = product;

		/*if (s.getAttribute("cart") == null) {
			
			System.out.println("1");
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(product, 1));
			System.out.println("2");
			if (ss == null) {
				System.out.println("3");
				ss = s;
				ss.setAttribute("cart", cart);
			}
		} else {
			List<Item> cart = (List<Item>) ss.getAttribute("cart");

			// using method isExisting here
			int index = isExisting(product.getPid(), ss);
			if (index == -1)
				cart.add(new Item(this.service.getProduct(index), 1));
			else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}

			ss.setAttribute("cart", cart);
		}
*/
		return new ModelAndView("ProductDetail");
	}

/*	private int isExisting(int id, HttpSession ss) {

		List<Item> cart = (List<Item>) ss.getAttribute("cart");

		for (int i = 0; i < cart.size(); i++)

			if (cart.get(i).getP().getPid() == id)
				return i;

		return -1;
	}
*/
	@RequestMapping("/Order")
	public String Order() {
		return "redirect:/memberShip";
	}

	public Product initFlow() {
		System.out.println(product.getPname());
		System.out.println("hi");
		return product;

	}

}
