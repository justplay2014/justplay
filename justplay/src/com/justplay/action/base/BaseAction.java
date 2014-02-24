package com.justplay.action.base;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport implements SessionAware,ServletRequestAware,ServletResponseAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	protected Map<String,Object> session;
	/**
	 * ����Ϣ����context�����У�ҳ��ȡֵ����ʹ��<s:property value="#key"/>
	 * @param key
	 * @param msg
	 */
	protected void setMessage(String key ,String msg) {
		ActionContext.getContext().put(key, msg);
	}
	/**
	 * ʵ�ֽӿڵķ������Զ�ִ�У���������session������������ʹ��
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	/**
	 * ʵ�ֽӿڵķ������Զ�ִ�У���������request������������ʹ��
	 */
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	/**
	 * ʵ�ֽӿڵķ������Զ�ִ�У���������response������������ʹ��
	 */
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

}
