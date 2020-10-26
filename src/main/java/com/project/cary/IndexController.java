package com.project.cary;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {
	
	@RequestMapping("/top")
	public void showTop() {
	}
	@RequestMapping("/foot")
	public void showFoot() {
	}
	
	@RequestMapping("/carousel")
	public void showCarousel() {
	}

	@RequestMapping(value="/index")
	public String home(Model mv) {
		
		mv.addAttribute("totalCount", 12);
		return "index";
	}
}
