package com.autobazaar.dao;
import java.util.List;

import com.autobazaar.model.*;

/*Creating DAO Interface*/
public interface ProductDAOInterface {
public List<Product> getAllProduct();
public void updateProduct(Product p);
public void deleteProduct(int pid);
public Product getProduct(int pid);
public void insertProduct(Product p);
}
