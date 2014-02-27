package com.justplay.tools;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.log4j.Logger;

import sun.misc.BASE64Encoder;

/**
 * MD5加密算法
 * 
 * @author javalife
 * 
 */
public class Md5 {

	private static Logger log = Logger.getLogger(Md5.class);
	
	/**
	 * 将str采用md5加密
	 * @param str
	 * @return
	 */
	public static String md5(String str) {
		try {
			/*
			 * MessageDigest 类为应用程序提供信息摘要算法的功能， 如 MD5 或 SHA 算法。信息摘要是安全的单向哈希函数，
			 * 它接收任意大小的数据，并输出固定长度的哈希值。
			 */
			MessageDigest md = MessageDigest.getInstance("MD5");
			// MessageDigest md = MessageDigest.getInstance("SHA");
			byte[] dist = md.digest(str.getBytes());
			// 将加密后的byte[]数据使用base64算法表示
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
