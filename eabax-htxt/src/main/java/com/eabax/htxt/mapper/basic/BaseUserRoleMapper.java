package com.eabax.htxt.mapper.basic;

import java.util.List;

import com.eabax.htxt.entity.basic.UserRole;
import com.eabax.htxt.entity.basic.UserRoleParam;

/**
* @author zhanghb
* @version 2017年7月3日 下午1:02:00
*
*/

public interface BaseUserRoleMapper {
	
	List<UserRole> selectUserRoles(UserRoleParam param);

}
