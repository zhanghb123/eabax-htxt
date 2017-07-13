package com.eabax.htxt.service.basic;

import java.util.List;

import com.eabax.htxt.entity.basic.Menu;

public interface BaseMenuService {
	
	List<Menu> getMenusByParentId(long parentId) throws Exception;
	List<Menu> getMenusAndChildByParentId(long parentId) throws Exception;

}
