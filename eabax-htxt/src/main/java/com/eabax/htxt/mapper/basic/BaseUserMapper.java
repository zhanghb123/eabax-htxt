package com.eabax.htxt.mapper.basic;

import com.eabax.htxt.entity.basic.User;

public interface BaseUserMapper {
	
	User selectUserByCode(String userCode);

}
