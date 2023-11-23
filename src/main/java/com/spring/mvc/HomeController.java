package com.spring.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomeController {

	@RequestMapping("/home")
	public RedirectView showForm(Model m, HttpServletRequest req) {
		RedirectView rv = new RedirectView();
		rv.setUrl(req.getContextPath()+"/v1/api/product/");
		return rv;
	}
	
	@RequestMapping("/about")
	public String about(Model m) {
		m.addAttribute("title", "About");
		m.addAttribute("name", "Munish");
		m.addAttribute("Id", 123);
		return "about";
	}

	@RequestMapping("/contact")
	public String showForm(Model m) {
		m.addAttribute("title", "Contact Us");
		return "contact-us";
	}

	@RequestMapping("/googleSearch")
	public String handleSearch(Model m) {
		m.addAttribute("title", "Google Search");
		return "google-search";
	}

	@RequestMapping("/initiateSearch")
	public String searchInitiated(@RequestParam("searchBox") String keyword) {
		// https://www.google.com/search?q=menaing
		System.out.println(keyword);
		String url = "https://www.google.com/search?q=" + keyword;
		return "redirect:" + url;
	}

	@RequestMapping(path = "/contact-processform", method = RequestMethod.POST)
	public String handleData(@RequestParam("userPassword") String p,
			@RequestParam(name = "checkMeOut", required = false) Boolean c, Model md, HttpServletRequest req) {
		String email = req.getParameter("email");
		System.out.println(email + " " + p + " " + c);
		md.addAttribute("email", email);
		md.addAttribute("pass", p);
		md.addAttribute("check", c);
		return "students";
	}
}
