package com.justplay.tools;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.log4j.Logger;

import sun.misc.BASE64Encoder;

/**
 * MD5�����㷨
 * 
 * @author javalife
 * 
 */
public class Md5 {

	private static Logger log = Logger.getLogger(Md5.class);
	
	/**
	 * ��str����md5����
	 * @param str
	 * @return
	 */
	public static String md5(String str) {
		try {
			/*
			 * MessageDigest ��ΪӦ�ó����ṩ��ϢժҪ�㷨�Ĺ��ܣ� �� MD5 �� SHA �㷨����ϢժҪ�ǰ�ȫ�ĵ����ϣ������
			 * �����������С�����ݣ�������̶����ȵĹ�ϣֵ��
			 */
			MessageDigest md = MessageDigest.getInstance("MD5");
			// MessageDigest md = MessageDigest.getInstance("SHA");
			byte[] dist = md.digest(str.getBytes());
			// �����ܺ��byte[]����ʹ��base64�㷨��ʾ
			return new BASE64Encoder().encode(dist);
			
		} catch (NoSuchAlgorithmException e) {
			log.error("[INFO] "+ e.getMessage(),e);
			return "";
		}
	}
	
	public static void main(String[] args) {
		String result = md5("justplay");
		System.out.println(result);
	}
}
