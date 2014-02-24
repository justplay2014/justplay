package com.justplay.action.user;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.justplay.action.base.BaseAction;
import com.justplay.beans.User;
import com.justplay.service.UserService;
import com.justplay.tools.Md5;
/**
 * 用户登录模块
 * 
 * 流程
 * 
 * 用户填写登录信息    》    Ajax请求校验     》    用户提交登录信息     》      后台校验
 * @author javalife
 * 
 */
public class LoginAction extends BaseAction {
	
	private static final long serialVersionUID = 1L;

	private UserService userService;

	private String username;
	private String password;
	
	public String execute() {
		
		if(session.get("loginUser") != null) {
			return SUCCESS;
		}
		//校验用户名和密码
		if(username != null && !"".equals(username)) {
			try {
				User db_user = null;
				//TODO 【login-1 】正则表达式校验用户输入的用户名是否为邮箱类型
				//如果是邮箱类型，就根据邮箱类型去数据库中查找；如果不是就根据username类型去数据库中查找
				username = username.trim();
				if(judgeIsOrEmailType(username)) {
					db_user = userService.findByColumnName("email",username);	
				} else {
					db_user = userService.findByColumnName("username",username);
				}
				//TODO 【login-2 】根据用户登录名查询的数据信息进行比对
				//如果查找到用户，那么比较密码是否相符；如果未查找到用户信息，则表示用户输入的信息有误，登录失败
				if(db_user != null) {
					String db_pwd = db_user.getPwd();
					if(password != null && !"".equals(password)) {
						password = password.trim();
						if(db_pwd.equals(Md5.md5(password))) {
							session.put("loginUser", db_user);
							
							return SUCCESS;
						}
					}
				} else {
					return "failed";
				}
			} catch (Exception e) {
				e.printStackTrace();
				return ERROR;
			}
		}
		
		return SUCCESS;
	}
	/**
	 * 判断用户输入的登录名是否是邮箱格式
	 * @param username  用户输入的登录名
	 * @return 如果正则匹配为邮箱格式，则返回true，如果不是，返回false
	 */
	private boolean judgeIsOrEmailType(String username) {
		String regex = "";
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(username);
		if(m.find()) {
			return true;
		}
		return false;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
}
