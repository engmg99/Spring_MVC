package com.spring.mvc.dao;

import java.util.List;

import com.spring.mvc.entity.Product;

public interface ProductDao {
	public void createProduct(Product product);

	public List<Product> getAllProducts();

	public Product getProduct(long id);

	public void updateProduct(Product product);
	
	public void deleteProduct(long id);

}
