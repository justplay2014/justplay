package com.justplay.action.test;

import java.util.ArrayList;
import java.util.List;

import com.justplay.beans.User;
import com.justplay.service.UserService;
import com.justplay.tools.Md5;
import com.opensymphony.xwork2.ActionSupport;

public class TestHibernateDaoAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static UserService userService;
	
	public String execute() {
		
		try {
			User user = new User();
			
			user.setUsername("justplay");
			user.setNickname("nickname_justplay");
			user.setSex(0);
			user.setActive_code("jihuo");
			user.setPwd(Md5.md5("justplay"));
			user.setEmail("justplay2014@126.com");
			
//			userService.save(user);
			
			long uid = 201402230445331970l;
			//User getUser = userService.get(uid);
			//System.out.println("getUser:"+getUser);
			//userService.delete(uid);
			
			List<User> allUsers = userService.findAll();
			for(User u : allUsers) {
				System.out.println("allUsers:"+u);
			}
			
			List<User> userList = userService.find("from User");
			for(User u : userList) {
				System.out.println("userList:"+u);
			}
			
			user.setUid(uid);
			userService.update(user);
			
			List<User> users = new ArrayList<User> ();
			users.add(userService.get(uid));
			userService.deleteAll(users);
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
		TestHibernateDaoAction.userService = userService;
	}
}
