package com.eabax.htxt.service.basic;

import com.eabax.common.entity.EasyUIResult;
import com.eabax.htxt.entity.basic.UserRoleParam;

public interface BaseUserRoleService {
	
	EasyUIResult selectUserRoles(UserRoleParam param) throws Exception;

}
