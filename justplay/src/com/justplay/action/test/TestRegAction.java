package com.justplay.action.test;

import com.justplay.action.base.BaseAction;

public class TestRegAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String execute() {
		System.out.println("Test Here");
		return SUCCESS;
	}
}
