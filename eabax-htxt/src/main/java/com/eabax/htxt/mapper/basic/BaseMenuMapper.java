package com.eabax.htxt.mapper.basic;

import java.util.List;

import com.eabax.htxt.entity.basic.Menu;

public interface BaseMenuMapper {
	
	List<Menu> getMenusByParentId(Long parentId);
	List<Menu> getMenuAndChildByParentId(Long parentId);

}
