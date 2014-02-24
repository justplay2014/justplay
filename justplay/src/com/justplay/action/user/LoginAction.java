package com.justplay.action.user;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.justplay.action.base.BaseAction;
import com.justplay.beans.User;
import com.justplay.service.UserService;
import com.justplay.tools.Md5;
/**
 * �û���¼ģ��
 * 
 * ����
 * 
 * �û���д��¼��Ϣ    ��    Ajax����У��     ��    �û��ύ��¼��Ϣ     ��      ��̨У��
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
		//У���û���������
		if(username != null && !"".equals(username)) {
			try {
				User db_user = null;
				//TODO ��login-1 ��������ʽУ���û�������û����Ƿ�Ϊ��������
				//������������ͣ��͸�����������ȥ���ݿ��в��ң�������Ǿ͸���username����ȥ���ݿ��в���
				username = username.trim();
				if(judgeIsOrEmailType(username)) {
					db_user = userService.findByColumnName("email",username);	
				} else {
					db_user = userService.findByColumnName("username",username);
				}
				//TODO ��login-2 �������û���¼����ѯ��������Ϣ���бȶ�
				//������ҵ��û�����ô�Ƚ������Ƿ���������δ���ҵ��û���Ϣ�����ʾ�û��������Ϣ���󣬵�¼ʧ��
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
	 * �ж��û�����ĵ�¼���Ƿ��������ʽ
	 * @param username  �û�����ĵ�¼��
	 * @return �������ƥ��Ϊ�����ʽ���򷵻�true��������ǣ�����false
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
