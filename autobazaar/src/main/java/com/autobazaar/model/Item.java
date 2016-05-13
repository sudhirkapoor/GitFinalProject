package com.autobazaar.model;

import java.io.Serializable;

public class Item implements Serializable{

	private Product p;
	private int quantity;
	public Product getP() {
		return p;
	}
	public void setP(Product p) {
		this.p = p;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Item(Product p, int quantity) {
	
		this.p = p;
		this.quantity = quantity;
	}
	
	public Item() {
	
	}
	
}
