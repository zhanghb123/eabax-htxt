package com.eabax.htxt.controller.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eabax.common.entity.EasyUIResult;
import com.eabax.common.utils.EResult;
import com.eabax.htxt.service.basic.BaseUserRoleService;

/**
* @author zhanghb
* @version 2017年7月3日 下午1:23:54
*
*/
@Controller
public class UserRoleController {
	
	@Autowired
	private BaseUserRoleService userRoleService;
	
	@RequestMapping("/user/role")
	@ResponseBody
	public EasyUIResult getUserRoles() throws Exception{
		EasyUIResult result = userRoleService.selectUserRoles();
		return result;
	}

}
