package com.autobazaar.model;


import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class Address implements Serializable {
	private String address;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

}
