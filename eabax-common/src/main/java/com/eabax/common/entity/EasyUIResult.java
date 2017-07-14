package com.eabax.common.entity;

import java.util.List;

/**
* @author zhanghb
* @version 2017年7月10日 下午4:34:53
*	EasyUI Datagrid 列表和分页参数
*/

public class EasyUIResult {

	private long total;
	
	private List<?> rows;
	
	public EasyUIResult(long total, List<?> rows) {
		this.total = total;
		this.rows = rows;
	}
	
	public EasyUIResult() {

	}

	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	
	
}
