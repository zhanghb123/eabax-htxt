package com.eabax.htxt.service.basic.impl;

import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import com.eabax.common.jedis.JedisClient;
import com.eabax.common.utils.EResult;
import com.eabax.common.utils.JsonUtils;
import com.eabax.htxt.entity.basic.User;
import com.eabax.htxt.mapper.basic.BaseUserMapper;
import com.eabax.htxt.service.basic.LoginService;

/**
* @author zhanghb
* @version 2017年6月27日 下午1:54:54
* 登录系统服务
*/

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private BaseUserMapper userMapper;
	
	@Autowired
	private JedisClient jedisClient;
	
	@Value("${SESSION_EXPIRE}")
	private Integer SESSION_EXPIRE;
	
	@Override
	public EResult userLogin(String username, String password) {
		// 1、判断用户和密码是否正确
		//根据用户名查询用户信息
		User user = userMapper.selectUserByCode(username);

		if (user == null) {
			//返回登录失败
			return EResult.build(400, "用户名或密码错误");
		}

		//判断密码是否正确
		if (!DigestUtils.md5DigestAsHex(password.getBytes()).equals(user.getUserPwd())) {
			// 如果不正确，返回登录失败
			return EResult.build(400, "用户名或密码错误");
		}
		
		//如果正确生成token。
		String token = UUID.randomUUID().toString();
		//把用户信息写入redis，key：token value：用户信息
		user.setUserPwd(null);
		jedisClient.set("SESSION:" + token, JsonUtils.objectToJson(user));
		//设置Session的过期时间
		jedisClient.expire("SESSION:" + token, SESSION_EXPIRE);
		//把token返回
		return EResult.ok(token);
	}

	@Override
	public EResult getUserByToken(String token) {
		String json = jedisClient.get("SESSION:"+token);
		if(StringUtils.isEmpty(json)){
			return EResult.build(201, "登录已经过期");
		}
		//取到用户信息更新token的过期时间
		jedisClient.expire("SESSION:" + token, SESSION_EXPIRE);
		//返回结果，EResult其中包含User对象
		User user = JsonUtils.jsonToEntity(json, User.class);
		return EResult.ok(user);
	}
	
}
