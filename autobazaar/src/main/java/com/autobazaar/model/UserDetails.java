package com.autobazaar.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="UserDetails")
/*Creating Model UserDetails class for storing the user details*/
public class UserDetails  implements Serializable  {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="uid")
	
	private int uid;
	@Column(name="name")
	@NotEmpty(message="*")
	private String name;
	@Column(name="email")
	@NotEmpty(message="*")
	private String email;
	@Column(name="password")
	@NotEmpty(message="*")
	private String password;
	@Transient
	@NotEmpty(message="*")
	private String repassword;
	@Column(name="address")
	@NotEmpty(message="*")
	private String address;
	@Column(name="state")
	@NotEmpty(message="*")
	private String state;
	@Column(name="city")
	@NotEmpty(message="*")
	private String city;
	@Column(name="mobile")
	
	private long mobile;
	@Column(name="zipcode")
	private int zipcode;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}	
	
	
	/*	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="uid")
	@NotEmpty(message="*")
	private int uid;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@NotEmpty(message="*")
	@Column(name="password")
	private String password;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@NotEmpty(message="*")
	@Column(name="fname")
	private String fname;
	@NotEmpty(message="*")
	@Column(name="lname")
	private String lname;
	@NotEmpty(message="*")
	@Column(name="userid")
	private String userid;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@NotEmpty(message="*")
	@Column(name="address")
	private String address;
	@NotEmpty(message="*")
	@Column(name="city")
	private String city;
	@NotEmpty(message="*")
	@Column(name="state")
	private String state;
	@NotEmpty(message="*")
	@Column(name="zipcode")
	private int zipcode;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}*/

}
