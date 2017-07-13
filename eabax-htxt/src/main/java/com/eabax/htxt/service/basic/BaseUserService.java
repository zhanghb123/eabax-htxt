package com.eabax.htxt.service.basic;

import com.eabax.htxt.entity.basic.User;

public interface BaseUserService {
	
	User getUserByCode(String code) throws Exception;

}
