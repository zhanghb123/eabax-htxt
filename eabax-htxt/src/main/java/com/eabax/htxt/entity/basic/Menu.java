package com.eabax.htxt.entity.basic;

import java.util.List;

/**
* @author zhanghb
* @version 2017年6月28日 下午1:32:10
*
*/

public class Menu {
	
	private Long menuId;
	private String menuName;
	private String menuUrl;
	private Long menuPartyId;
	private String menuExtControl;
	private Integer menuOrder;
	private List<Menu> childs;
	
	public Long getMenuId() {
		return menuId;
	}
	public void setMenuId(Long menuId) {
		this.menuId = menuId;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuUrl() {
		return menuUrl;
	}
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}
	public Long getMenuPartyId() {
		return menuPartyId;
	}
	public void setMenuPartyId(Long menuPartyId) {
		this.menuPartyId = menuPartyId;
	}
	public String getMenuExtControl() {
		return menuExtControl;
	}
	public void setMenuExtControl(String menuExtControl) {
		this.menuExtControl = menuExtControl;
	}
	public Integer getMenuOrder() {
		return menuOrder;
	}
	public void setMenuOrder(Integer menuOrder) {
		this.menuOrder = menuOrder;
	}
	public List<Menu> getChilds() {
		return childs;
	}
	public void setChilds(List<Menu> childs) {
		this.childs = childs;
	}
	
}
