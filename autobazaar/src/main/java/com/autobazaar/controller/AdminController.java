package com.autobazaar.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
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
import org.springframework.web.multipart.MultipartFile;
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
	@RequestMapping(value = "/Admin/addProduct", method = RequestMethod.POST)
	public String insertProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model m,
			HttpServletRequest request) {
		System.out.print(product.toString());
		System.out.print(product.getImage());
		if (result.hasErrors()) {
			System.out.println(result.toString());

			m.addAttribute("listProduct", this.service.getAllProduct());

			return "Admin";
		}
		if (product.getPid() == 0) {
			this.service.insertProduct(product);

			MultipartFile file = product.getImage();
			String originalfile = file.getOriginalFilename();
			
			String filepath = request.getSession().getServletContext().getRealPath("/resources/images/");
			System.out.println(filepath);
			String filename = filepath + "\\" + product.getPid() + ".jpg";
			
			try {
				byte imagebyte[] = product.getImage().getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
				fos.write(imagebyte);
				fos.close();
				System.out.println(filename);

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		else

		{
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
		System.out.println("Controller start");
		model.addAttribute("product", service.getProduct(id));
		Product p = service.getProduct(id);
		System.out.println(p.getPname());
		model.addAttribute("listProduct", service.getAllProduct());
		System.out.println("Controller end");
		return "Admin";
	}
}
