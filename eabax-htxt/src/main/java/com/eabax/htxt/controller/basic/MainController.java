package com.eabax.htxt.controller.basic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eabax.common.utils.EResult;
import com.eabax.htxt.entity.basic.Menu;
import com.eabax.htxt.service.basic.BaseMenuService;

/**

*/
@Controller
public class MainController {
	
	@Autowired
	private BaseMenuService menuService;


//	@RequestMapping("/main")
//	public ModelAndView toMain() throws Exception{
//		List<Menu> result = menuService.getMenusByParentId(0);
//		ModelAndView model = new ModelAndView("main");
//		model.addObject("menus", result);
//		return model;
//		
//	}
	

	@RequestMapping(value="/menu/{parentId}")
	@ResponseBody
	public EResult menu(@PathVariable long parentId ) throws Exception{
		List<Menu> result = menuService.getMenusAndChildByParentId(parentId);
		return EResult.ok(result);
	}
	
}
