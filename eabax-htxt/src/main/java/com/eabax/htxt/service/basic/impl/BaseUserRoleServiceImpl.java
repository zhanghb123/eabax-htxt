package com.eabax.htxt.service.basic.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eabax.common.entity.EasyUIResult;
import com.eabax.common.utils.EResult;
import com.eabax.htxt.entity.basic.UserRole;
import com.eabax.htxt.mapper.basic.BaseUserRoleMapper;
import com.eabax.htxt.service.basic.BaseUserRoleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

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
	public EasyUIResult selectUserRoles(Integer page, Integer rows) throws Exception {
		//设置分页查询信息
		PageHelper.startPage(page, rows);
		//执行查询
		List<UserRole> list = userRoleMapper.selectUserRoles();
		//创建返回值对象
		EasyUIResult result = new EasyUIResult();
		result.setRows(list);
		//取分页结果
		PageInfo<UserRole> pageHelper = new PageInfo<>(list);
		result.setTotal(pageHelper.getTotal());
		return result;
	}

}
