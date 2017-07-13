package com.eabax.htxt.service.basic.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eabax.common.jedis.JedisClient;
import com.eabax.common.utils.JsonUtils;
import com.eabax.htxt.entity.basic.Menu;
import com.eabax.htxt.mapper.basic.BaseMenuMapper;
import com.eabax.htxt.service.basic.BaseMenuService;

@Service
public class BaseMenuServiceImpl implements BaseMenuService {
	
	@Autowired
	private BaseMenuMapper menuMapper;
	@Autowired
	private JedisClient jedisClient;
	
	private String menusByParentid = "menu_pid_";
	
	@Override
	public List<Menu> getMenusByParentId(long parentId) throws Exception {
		List<Menu> menus = menuMapper.getMenusByParentId(parentId);
		return menus;
	}
	
	@Override
	public List<Menu> getMenusAndChildByParentId(long parentId) throws Exception {
		List<Menu> menus = menuMapper.getMenusByParentId(parentId);
		List<Menu> childMenus = new ArrayList<Menu>();
		for(Menu menu:menus){
			childMenus = menuMapper.getMenusByParentId(menu.getMenuId());
			menu.setChilds(childMenus);
		}
		return menus;
	}

	

}
