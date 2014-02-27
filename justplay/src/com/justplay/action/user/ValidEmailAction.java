package com.justplay.action.user;

import com.justplay.action.base.BaseAction;
import com.justplay.beans.User;
import com.justplay.service.UserService;

public class ValidEmailAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	
	private UserService userService;
	
	private String email;
	private boolean ok;
	

	public String execute() {
		try {
			User user = userService.findByColumnName("email", email);
			if (user == null) {
				ok = true;
			} else {
				ok = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public boolean isOk() {
		return ok;
	}

	public void setOk(boolean ok) {
		this.ok = ok;
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
