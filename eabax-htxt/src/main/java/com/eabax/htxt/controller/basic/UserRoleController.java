package com.eabax.htxt.controller.basic;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.eabax.common.entity.EasyUIResult;
import com.eabax.common.utils.Underline2Camel;
import com.eabax.htxt.entity.basic.UserRoleParam;
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
	
	@RequestMapping("/user/role/list")
	@ResponseBody
	public EasyUIResult getUserRoles(UserRoleParam param) throws Exception{
		if(StringUtils.isNotBlank(param.getUserRoleName())){
			param.setUserRoleName(new String(param.getUserRoleName().getBytes("iso-8859-1"), "utf-8"));
		}
		if(StringUtils.isNotBlank(param.getSort())){
			param.setSort(Underline2Camel.camel2Underline(param.getSort()));
		}
		EasyUIResult result = userRoleService.selectUserRoles(param);
		return result;
	}

}
