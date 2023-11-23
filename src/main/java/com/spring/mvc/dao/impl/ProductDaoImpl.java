package com.spring.mvc.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.spring.mvc.dao.ProductDao;
import com.spring.mvc.entity.Product;

@Service // OR i can use @Component annotation here
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	@Transactional
	public void createProduct(Product product) {
		hibernateTemplate.saveOrUpdate(product);
	}

	@Override
	public List<Product> getAllProducts() {
		return hibernateTemplate.loadAll(Product.class);
	}

	@Override
	@Transactional
	public void deleteProduct(long id) {
		Product obj = hibernateTemplate.load(Product.class, id);
		hibernateTemplate.delete(obj);
	}

	@Override
	public Product getProduct(long id) {
		return hibernateTemplate.get(Product.class, id);
	}

	@Override
	@Transactional
	public void updateProduct(Product product) {
		createProduct(product);
	}

}
