package com.spring.mvc.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.mvc.dao.ProductDao;
import com.spring.mvc.entity.Product;
import com.spring.mvc.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	private ProductDao productDao;

	public ProductServiceImpl(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public void addProduct(Product product) {
		productDao.createProduct(product);
	}

	@Override
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Override
	public Product getProduct(long id) {
		return productDao.getProduct(id);
	}

	@Override
	public void deleteProduct(long id) {
		productDao.deleteProduct(id);
	}

	@Override
	public void updateProduct(Product product) {
		productDao.updateProduct(product);
	}

}
