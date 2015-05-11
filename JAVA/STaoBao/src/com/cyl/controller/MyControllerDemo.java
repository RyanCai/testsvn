package com.cyl.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyControllerDemo{

	@RequestMapping("/hello")
	public ModelAndView helloWorld(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		String str="Hello Caiyunlong!";
		return new ModelAndView("hello","message",str);
	}

}
