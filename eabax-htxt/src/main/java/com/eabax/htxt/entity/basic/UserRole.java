package com.eabax.htxt.entity.basic;
/**
* @author zhanghb
* @version 2017年7月3日 上午10:06:48
*
*/

public class UserRole {
	
	private Integer userRoleId;
	private String userRoleName;
	private String userRoleDesc;
	private Integer isInit;
	private Integer userRoleOrder;
	public Integer getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(Integer userRoleId) {
		this.userRoleId = userRoleId;
	}
	public String getUserRoleName() {
		return userRoleName;
	}
	public void setUserRoleName(String userRoleName) {
		this.userRoleName = userRoleName;
	}
	public String getUserRoleDesc() {
		return userRoleDesc;
	}
	public void setUserRoleDesc(String userRoleDesc) {
		this.userRoleDesc = userRoleDesc;
	}
	public Integer getIsInit() {
		return isInit;
	}
	public void setIsInit(Integer isInit) {
		this.isInit = isInit;
	}
	public Integer getUserRoleOrder() {
		return userRoleOrder;
	}
	public void setUserRoleOrder(Integer userRoleOrder) {
		this.userRoleOrder = userRoleOrder;
	}
	
	

}
