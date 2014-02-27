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

		user.setUsername(username); // �û���
		user.setEmail(email); // ����
		user.setPwd(Md5.md5(pwd)); // ����
		user.setSex(2); // �Ա�Ĭ�ϱ���
		user.setActive_code(" ");
		user.setCreate_time(DateUtil.long2timestamp(System.currentTimeMillis())); // ��ǰע��ʱ��
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
