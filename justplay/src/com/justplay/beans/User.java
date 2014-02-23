package com.justplay.beans;

import java.io.Serializable;
import java.sql.Timestamp;

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long uid; //用户编号
	private String nickname; //昵称
	private String username; //用户名
	private int sex; //1：男,0：女,3:保密
	private String pwd; //MD5加密密码
	private String email; //邮箱
	private String phone; //手机号码
	private String qq; //QQ号码
	private String description; //自我描述
	private int is_active; //0：未激活，1：激活
	private String active_code; //注册发送的激活码
	private int status; //1：表示封号期间，2表示永久销号，0表示正常
	private int province_id; //省份编号
	private int city_id; //城市编号
	private Timestamp create_time; //账户创建时间
	private Timestamp update_time; //账户上次更新时间

	public User() {
		
	}
	
	public Long getUid() {
		return uid;
	}

	public void setUid(Long uid) {
		this.uid = uid;
	}


	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getIs_active() {
		return is_active;
	}

	public void setIs_active(int is_active) {
		this.is_active = is_active;
	}

	public String getActive_code() {
		return active_code;
	}

	public void setActive_code(String active_code) {
		this.active_code = active_code;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getProvince_id() {
		return province_id;
	}

	public void setProvince_id(int province_id) {
		this.province_id = province_id;
	}

	public int getCity_id() {
		return city_id;
	}

	public void setCity_id(int city_id) {
		this.city_id = city_id;
	}

	public Timestamp getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Timestamp create_time) {
		this.create_time = create_time;
	}

	public Timestamp getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Timestamp update_time) {
		this.update_time = update_time;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", nickname=" + nickname + ", username="
				+ username + ", sex=" + sex + ", pwd=" + pwd + ", email="
				+ email + ", phone=" + phone + ", qq=" + qq + ", description="
				+ description + ", is_active=" + is_active + ", active_code="
				+ active_code + ", status=" + status + ", province_id="
				+ province_id + ", city_id=" + city_id + ", create_time="
				+ create_time + ", update_time=" + update_time + "]";
	}
}
