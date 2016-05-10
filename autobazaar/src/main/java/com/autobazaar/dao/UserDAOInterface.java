package com.autobazaar.dao;

import com.autobazaar.model.*;
/*Creating DAO Interface for user*/
public interface UserDAOInterface {
	public void insertUserDetail(UserDetails p);
	public UserDetails getUserDetail(String userid);
}
