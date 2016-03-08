package com.tamaar.controller;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/protected/email")
public class EmailControllerr {
	
	private Logger logger = Logger.getLogger(EmailControllerr.class);

	@RequestMapping(method = RequestMethod.GET)
	public String emailRedirect() {
		return "emailPage";
	}


}
