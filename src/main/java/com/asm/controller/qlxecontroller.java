package com.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class qlxecontroller {
	
	@RequestMapping("/qlxe")
	public String hello(Model model) {
		model.addAttribute("message","Welcome to Spring");
		return "qlxe";
	}


}
