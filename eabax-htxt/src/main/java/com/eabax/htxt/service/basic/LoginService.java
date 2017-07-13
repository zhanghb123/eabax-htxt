package com.eabax.htxt.service.basic;

import com.eabax.common.utils.EResult;

/**
* @author zhanghb
* @version 2017年6月27日 下午1:41:56
* 系统登录服务接口
*/

public interface LoginService {
	
	//参数：用户名和密码
		//业务逻辑：
		/*
		 * 1、判断用户和密码是否正确
		 * 2、如果不正确，返回登录失败
		 * 3、如果正确生成token。
		 * 4、把用户信息写入redis，key：token value：用户信息
		 * 5、设置Session的过期时间
		 * 6、把token返回
		 */
		//返回值：EResult，其中包含token信息
		EResult userLogin(String username, String password);
		
		/*
		 * 根据token获取用户信息
		 */
		EResult getUserByToken(String token);

}
