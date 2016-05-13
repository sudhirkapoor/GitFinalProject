package com.autobazaar.model;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.transaction.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "Product")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "pid")
	private int pid;

	@Column(name = "pname", nullable = false)
	// @NotNull
	/* @NotEmpty(message="Name cannot be empty") */
	@NotEmpty(message = "*")
	private String pname;
	/* @NotEmpty(message="Description cannot be empty") */
	@NotEmpty(message = "*")
	@Column(name = "pdescription")
	private String pdescription;
	@Digits	(integer = 6, fraction = 0)
	@Column(name = "pprice")
	private int pprice;
	/* @NotEmpty(message="Brand cannot be empty") */
	@NotEmpty(message = "*")
	@Column(name = "pbrand")
	private String pbrand;
	/* @NotEmpty(message="Category cannot be empty") */
	@NotEmpty(message = "*")
	@Column(name = "pcategory")
	private String pcategory;

	@Transient
	private MultipartFile image;

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdescription() {
		return pdescription;
	}

	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}

	public int getPprice() {
		return pprice;
	}

	public void setPprice(int pprice) {
		this.pprice = pprice;
	}

	public String getPbrand() {
		return pbrand;
	}

	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}

	public String getPcategory() {
		return pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}

}
