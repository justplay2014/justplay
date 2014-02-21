package com.justplay.action.user;

import com.justplay.beans.User;
import com.justplay.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static UserService userService;
	
	public String execute() {
		
		User user = new User();
		try {
			userService.add(user);
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}
	
	public static UserService getUserService() {
		return userService;
	}

	public static void setUserService(UserService userService) {
		LoginAction.userService = userService;
	}
}
