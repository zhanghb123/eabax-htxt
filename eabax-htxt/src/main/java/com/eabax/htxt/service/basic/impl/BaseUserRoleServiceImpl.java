package com.eabax.htxt.service.basic.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eabax.common.entity.EasyUIResult;
import com.eabax.common.utils.EResult;
import com.eabax.htxt.entity.basic.UserRole;
import com.eabax.htxt.mapper.basic.BaseUserRoleMapper;
import com.eabax.htxt.service.basic.BaseUserRoleService;

/**
* @author zhanghb
* @version 2017年7月3日 下午1:12:46
*
*/
@Service
public class BaseUserRoleServiceImpl implements BaseUserRoleService {
	
	@Autowired
	private BaseUserRoleMapper userRoleMapper;

	@Override
	public EasyUIResult selectUserRoles() throws Exception {
		List<UserRole> list = userRoleMapper.selectUserRoles();
		EasyUIResult result = new EasyUIResult(list.size(), list);
		return result;
	}

}
