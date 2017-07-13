package com.eabax.htxt.controller.basic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.eabax.common.utils.CookieUtils;
import com.eabax.common.utils.EResult;
import com.eabax.common.utils.VerificationCodeUtil;
import com.eabax.htxt.service.basic.LoginService;

/**
 * 人员登录Controller
 * 获取验证码
*/
@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@Value("${TOKEN_KEY}")
	private String TOKEN_KEY;

	/**
	 * 响应验证码页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/VerificationCode")
	public String validateCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 设置响应的类型格式为图片格式
		response.setContentType("image/jpeg");
		// 禁止图像缓存。
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		//生成验证码保存到session
		VerificationCodeUtil vCode = new VerificationCodeUtil(110, 35, 4, 10);
		HttpSession session = request.getSession();
		session.setAttribute("code", vCode.getCode());
		vCode.write(response.getOutputStream());
		return null;
	}
	
	/**
	 * 系统登录
	 * @throws Exception 
	 *
	 */
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public EResult login(HttpServletRequest request,HttpServletResponse response, String userName,String password,String valiDate) throws Exception{
		HttpSession session = request.getSession();
		String mainValidate = session.getAttribute("code").toString();
		if(!mainValidate.equalsIgnoreCase(valiDate)){
			return EResult.build(400, "验证码错误");
		}
		
		EResult result = loginService.userLogin(userName, password);
		//判断是否登录成功
		if(result.getStatus() == 200) {
			String token = result.getData().toString();
			//如果登录成功需要把token写入cookie
			CookieUtils.setCookie(request, response, TOKEN_KEY, token);
		}
		//返回结果
		return result;
		
	}
	
	@RequestMapping("/user/token/{token}")
	@ResponseBody
	public EResult getUserByToken(@PathVariable String token){
		EResult result = loginService.getUserByToken(token);
		return result;
	}

}
