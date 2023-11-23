package com.spring.mvc.service;

import java.util.List;

import com.spring.mvc.entity.Product;

public interface ProductService {
	public void addProduct(Product product);

	public List<Product> getAllProducts();

	public Product getProduct(long id);

	public void updateProduct(Product product);

	public void deleteProduct(long id);
}
