package com.justplay.beans;

import java.io.Serializable;
import java.sql.Timestamp;

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long uid; //�û����
	private String nickname; //�ǳ�
	private String username; //�û���
	private int sex; //1����,0��Ů,3:����
	private String pwd; //MD5��������
	private String email; //����
	private String phone; //�ֻ�����
	private String qq; //QQ����
	private String description; //��������
	private int is_active; //0��δ���1������
	private String active_code; //ע�ᷢ�͵ļ�����
	private int status; //1����ʾ����ڼ䣬2��ʾ�������ţ�0��ʾ����
	private int province_id; //ʡ�ݱ��
	private int city_id; //���б��
	private Timestamp create_time; //�˻�����ʱ��
	private Timestamp update_time; //�˻��ϴθ���ʱ��

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
