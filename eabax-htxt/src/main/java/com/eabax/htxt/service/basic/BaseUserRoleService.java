package com.eabax.htxt.service.basic;

import com.eabax.common.entity.EasyUIResult;
import com.eabax.common.utils.EResult;

public interface BaseUserRoleService {
	
	EasyUIResult selectUserRoles(Integer page, Integer rows) throws Exception;

}
