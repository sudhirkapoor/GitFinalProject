package com.autobazaar.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.autobazaar.model.Product;
import com.autobazaar.service.ProductService;
import com.google.gson.Gson;

@Controller
public class AdminController {
	/* Auto wiring service object */

	// @Qualifier(value="service")
	ProductService service;

	@Autowired
	public void setService(ProductService service) {
		this.service = service;
	}

	/*
	 * List product method will call when admin call the admin age by typing
	 * /pageAdmin at the end of the URL
	 */
	@RequestMapping(value = "/pageAdmin")
	public String listProduct(Model model) {
		Product p = new Product();
		model.addAttribute("product", p);
		model.addAttribute("listProduct", this.service.getAllProduct());
		return "Admin";
	}

	/* This method will call when admin insert new records int the table */
	@RequestMapping(value = "/Admin/addProduct", method=RequestMethod.POST)
	public String insertProduct( @Valid @ModelAttribute("product") Product product, BindingResult result,Model m) {
		
	if (result.hasErrors()) {
		System.out.println("Error");
		
		m.addAttribute("listProduct", this.service.getAllProduct());
		
		return "Admin";
	}
		if (product.getPid() == 0) {
			this.service.insertProduct(product);
		} else {
			this.service.updateProduct(product);
		}
		return "redirect:/pageAdmin";
	}

	/*
	 * This method will call when admin click the delete button on page, then
	 * record will be removed from the table
	 */
	@RequestMapping("/Admin/deleteProduct/{id}")
	public String deleteProduct(@PathVariable("id") int id) {
		this.service.deleteProduct(id);
		return "redirect:/pageAdmin";
	}

	/*
	 * This method will call when admin click the edit button on page, then
	 * specific record will be fatch from the table and and send it back to the
	 * page for editing
	 */
	@RequestMapping("/Admin/updateProduct/{id}")
	public String updateProduct(@PathVariable("id") int id, Model model) {
		model.addAttribute("product", service.getProduct(id));
		Product p = service.getProduct(id);
		model.addAttribute("listProduct", service.getAllProduct());
		return "Admin";
	}
}
