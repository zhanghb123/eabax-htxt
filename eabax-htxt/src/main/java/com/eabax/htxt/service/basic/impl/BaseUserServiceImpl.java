package com.eabax.htxt.service.basic.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eabax.htxt.entity.basic.User;
import com.eabax.htxt.mapper.basic.BaseUserMapper;
import com.eabax.htxt.service.basic.BaseUserService;

@Service
public class BaseUserServiceImpl implements BaseUserService {
	
	@Autowired
	private BaseUserMapper userMapper;

	@Override
	public User getUserByCode(String code) throws Exception {
		User user = null;
		user = userMapper.selectUserByCode(code);
		return user;
	}


}
