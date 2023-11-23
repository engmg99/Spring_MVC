package com.spring.mvc;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.mvc.entity.Product;
import com.spring.mvc.service.ProductService;

@Component
@RequestMapping("/product/")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/")
	public String productHome(Model m) {
		m.addAttribute("title", "Home");
		List<Product> productList = productService.getAllProducts();
		m.addAttribute("products", productList);
		return "products";
	}

	@RequestMapping("/add")
	public String showAddProductPage(Model m) {
		m.addAttribute("title", "Add Product");
		return "add-product";
	}

	@RequestMapping(value = "/add-product", method = RequestMethod.POST)
	public RedirectView addProduct(@ModelAttribute("product") Product product, HttpServletRequest req) {
		System.out.println(product);
		RedirectView rv = new RedirectView();
		System.out.println(req.getRequestURI());
		rv.setUrl(req.getContextPath() + "/v1/api/product/");// here also we need to append the contextPath so to get
																// that we use HTTPServeltRequest
		productService.addProduct(product);
		return rv;
	}

	@RequestMapping("/update/{id}")
	public String showUpdateProductPage(@PathVariable Long id, Model m) {
		Product existingProductObj = productService.getProduct(id);
		m.addAttribute("title", "Update Product");
		m.addAttribute("existingProduct", existingProductObj);
		return "update-product";
	}

	@RequestMapping(value = "/update-product", method = RequestMethod.POST)
	public RedirectView updateProduct(@ModelAttribute("product") Product product, HttpServletRequest req) {
		System.out.println(product);
		RedirectView rv = new RedirectView();
		System.out.println(req.getRequestURI());
		rv.setUrl(req.getContextPath() + "/v1/api/product/");// here also we need to append the contextPath so to get
																// that we use HTTPServeltRequest
		productService.updateProduct(product);
		return rv;
	}

	@RequestMapping(value = "/delete-product/{id}", method = RequestMethod.GET)
	public RedirectView deleteProduct(@PathVariable Long id, HttpServletRequest req) {
		RedirectView rv = new RedirectView();
		if (id != null) {
			productService.deleteProduct(id);
		}
		rv.setUrl(req.getContextPath() + "/v1/api/product/");
		return rv;
	}
}
