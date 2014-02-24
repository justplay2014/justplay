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
	 * 将信息存入context区域中，页面取值可以使用<s:property value="#key"/>
	 * @param key
	 * @param msg
	 */
	protected void setMessage(String key ,String msg) {
		ActionContext.getContext().put(key, msg);
	}
	/**
	 * 实现接口的方法，自动执行，用于设置session，供其它子类使用
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	/**
	 * 实现接口的方法，自动执行，用于设置request，供其它子类使用
	 */
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	/**
	 * 实现接口的方法，自动执行，用于设置response，供其它子类使用
	 */
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

}
