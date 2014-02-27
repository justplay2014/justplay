package com.justplay.action.user;

import com.justplay.action.base.BaseAction;
import com.justplay.beans.User;
import com.justplay.service.UserService;
import com.justplay.tools.DateUtil;
import com.justplay.tools.Md5;

/**
 * 
 * @author zls
 *
 */
public class RegisterAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
	
	private String username;
	private String email;
	private String pwd;
	
	public String execute() {
		User user = new User();

		user.setUsername(username); // 用户名
		user.setEmail(email); // 邮箱
		user.setPwd(Md5.md5(pwd)); // 密码
		user.setSex(2); // 性别：默认保密
		user.setActive_code(" ");
		user.setCreate_time(DateUtil.long2timestamp(System.currentTimeMillis())); // 当前注册时间
		try {
			userService.save(user);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}
