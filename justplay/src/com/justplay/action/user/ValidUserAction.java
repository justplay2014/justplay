package com.justplay.action.user;

import com.justplay.action.base.BaseAction;
import com.justplay.beans.User;

import com.justplay.service.UserService;

/**
 * 
 * @author zls
 *
 */
public class ValidUserAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
	
	private String username;
	private boolean ok;
	

	public String execute() {
		try {
			User user = userService.findByColumnName("username", username);
			
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
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

}
