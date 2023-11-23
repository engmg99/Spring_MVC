package com.spring.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.mvc.entity.Student;

@Controller
public class FormController {

	@RequestMapping(value = "/create-student", method = RequestMethod.GET)
	public String showComplexForm(Model m) {
		m.addAttribute("title", "Create Student");
		return "create-student";
	}

	@RequestMapping(value = "/handle-create-student", method = RequestMethod.POST)
	public String createUserHandler(@ModelAttribute("student") Student student, HttpServletRequest req,
			BindingResult results, RedirectAttributes redAtt) {
		System.out.println("Inside");
		if (results.hasErrors()) {
			System.out.println("Inside IF");
			return "create-student";
		}
		System.out.println(student);
		System.out.println(student.getName());
		return "students";
	}
}
