package com.eabax.htxt.controller.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ZHB
 * 页面跳转
 *
 */
@Controller
public class PageController {
	
	@RequestMapping("/")
	public String toIndex() {
		return "login";
	}
	
	@RequestMapping("/{page}")
	public String toPage(@PathVariable String page) {
		return page;
	}

}
