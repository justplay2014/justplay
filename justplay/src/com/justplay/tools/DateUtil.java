package com.justplay.tools;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;

public class DateUtil {
	private static Logger logger = Logger.getLogger("DateUtil");

	/**
	 * 获取当前时间 格式：YYYY-MM-dd String
	 * 
	 * @return
	 */
	public static String getNowDate(String format) {
		long time = System.currentTimeMillis();
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		String date = sdf.format(time);
		return date;
	}

	/**
	 * 获得指定时间上个月的时间
	 * 
	 * @param date
	 * @return
	 */
	public static String getLastMonthDay(String date, String format) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			Calendar c = Calendar.getInstance();
			c.setTime(sdf.parse(date));
			c.add(Calendar.MONTH, -1);
			return sdf.format(c.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return "";
		}
	}

	/**
	 * 获取日期的通用方法
	 * 
	 * @param parameter
	 *            给定参数，表示当前时间的parameter天后的时间
	 * @return 任何一天
	 */
	public static String getSomeDay(int parameter, String format) {
		Calendar calendar = Calendar.getInstance(); // 得到日历
		calendar.setTime(new Date());// 把当前时间赋给日历
		calendar.add(Calendar.DAY_OF_MONTH, parameter);

		SimpleDateFormat sdf = new SimpleDateFormat(format); // 设置时间格式
		String previous_day = sdf.format(calendar.getTime());

		return previous_day;
	}

	/**
	 * 根据参数date，获取其他日期
	 * 
	 * @param date
	 *            某一天的日期
	 * @param parameter
	 *            整形参数,-1表示前一天,1表示后一天
	 * @return 某一天的日期
	 */
	public static String getSomeDay(String date, String format, int parameter) {
		Calendar calendar = Calendar.getInstance(); // 得到日历
		calendar.setTime(string2date(date, format));// 把当前时间赋给日历
		calendar.add(Calendar.DAY_OF_MONTH, parameter); // 设置为前一天

		SimpleDateFormat sdf = new SimpleDateFormat(format); // 设置时间格式
		String previous_day = sdf.format(calendar.getTime()); // 格式化前一天

		return previous_day;
	}

	/**
	 * 日期相差年月日比较
	 * 
	 * @param startDate
	 * @param endDate
	 * @param stype
	 *            : 0表示比较天，1表示比较月，2表示比较年
	 * @return
	 */
	public static int compareDate(String startDate, String endDate,
			String format, int stype) {
		int n = 0;
		String[] u = { "天", "月", "年" };
		String formatStyle = stype == 1 ? "yyyy-MM" : "yyyy-MM-dd";
		endDate = endDate == null ? getNowDate(format) : endDate;
		DateFormat df = new SimpleDateFormat(formatStyle);
		Calendar c1 = Calendar.getInstance();
		Calendar c2 = Calendar.getInstance();
		try {
			c1.setTime(df.parse(startDate));
			c2.setTime(df.parse(endDate));
		} catch (Exception e) {
			logger.error("[ERROR]" + e.getMessage(), e);
			System.out.println("wrong occured");
		}
		// List list = new ArrayList();
		while (!c1.after(c2)) { // 循环对比，直到相等，n 就是所要的结果
			// list.add(df.format(c1.getTime())); // 这里可以把间隔的日期存到数组中 打印出来
			n++;
			if (stype == 1) {
				c1.add(Calendar.MONTH, 1); // 比较月份，月份+1
			} else {
				c1.add(Calendar.DATE, 1); // 比较天数，日期+1
			}
		}
		n = n - 1;
		if (stype == 2) {
			n = (int) n / 365;
		}
		System.out.println(startDate + " -- " + endDate + " 相差多少" + u[stype]
				+ ":" + n);
		return n;
	}

	/**
	 * 时间戳转换成String形式的时间
	 * 
	 * @param time
	 * @return
	 */
	public static String timestamp2date(long time, String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		String date = sdf.format(time * 1000L);
		return date;
	}

	/**
	 * 时间转换成时间戳
	 * 
	 * @param time
	 * @return
	 * @throws Exception
	 */
	public static long date2timestamp(String time, String format) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			Date epoch = sdf.parse(time);
			long date = epoch.getTime() / 1000L;
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return 0;
		}
	}

	/**
	 * 字符串转换成日期
	 * 
	 * @param time
	 * @return
	 * @throws Exception
	 */
	public static Date string2date(String date, String format) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			Date date1 = new java.sql.Date(sdf.parse(date).getTime());
			return date1;
		} catch (ParseException e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return null;
		}
	}
	
	/**
	 * 
	 * @param date
	 * @param format
	 * @return
	 */
	public static Timestamp string2timestamp(String date, String format) {
		try {
			SimpleDateFormat sdf = new SimpleDateFormat(format);
			Timestamp timestamp = new Timestamp(sdf.parse(date).getTime());
			return timestamp;
		} catch (ParseException e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return null;
		}
	}

	/**
	 * yyyy-MM-dd时间格式判断
	 * 
	 * @param date
	 * @return
	 */
	public static boolean matchdate(String date) {
		String regex = "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$";
		Pattern p = Pattern.compile(regex);
		String val = null;
		Matcher m = p.matcher(date);
		while (m.find()) {
			val = m.group();
		}
		if (val == null) {
			return false;
		} else {
			return true;
		}
	}

	/**
	 * 一天最后的时刻
	 * 
	 * @param date
	 * @return
	 */
	public static String daymax2string(String date) {
		return date + " 23:59:59";
	}

	/**
	 * 一天最早的时刻
	 * 
	 * @param date
	 * @return
	 */
	public static String daymin2string(String date) {
		return date + " 00:00:00";
	}

	/**
	 * 获得一天最早的时间戳
	 * 
	 * @param date
	 * @return
	 */
	public static long daymin2timestamp(String date, String format) {
		try {
			return date2timestamp(date, format);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return 0;
		}
	}

	/**
	 * 获得一天最晚的时间戳
	 * 
	 * @param date
	 * @return
	 */
	public static long daymax2timestamp(String date, String format) {
		try {
			String time = getSomeDay(date, format, 1);
			long l = date2timestamp(time, format) - 1;
			return l;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return 0;
		}
	}

	/**
	 * 获取月的第一天
	 * 
	 * @param date
	 * @return
	 */
	public static String getTheMonthFirstDay(String date, String format) {
		Date dNow;
		try {
			dNow = string2date(date, format);
			// 月的第一天时间
			Date firstday = new Date();

			Calendar calendar = Calendar.getInstance(); // 得到日历
			calendar.setTime(dNow);// 把当前时间赋给日历
			calendar.set(Calendar.DAY_OF_MONTH, 1); // 设置为前一天
			firstday = calendar.getTime(); // 得到前一天的时间

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 设置时间格式
			String d = sdf.format(firstday); // 格式化前一天

			return d;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return null;
		}
	}

	/**
	 * 秒转换成 时:分:秒
	 * 
	 * @param seconds
	 * @return
	 */
	public static String second2HMS(long seconds) {
		long hour = seconds / 3600;
		String h = hour < 10 ? "0" + hour : "" + hour;
		long minute = (seconds - hour * 3600) / 60;
		String m = minute < 10 ? "0" + minute : "" + minute;
		long second = seconds - hour * 3600 - minute * 60;
		String s = second < 10 ? "0" + second : "" + second;

		String hms = h + ":" + m + ":" + s;
		return hms;
	}

	/**
	 * 毫秒转换成时间格式
	 * 
	 * @param millisecond
	 * @return
	 */
	public static String millisecond2date(long millisecond) {
		Date date = new Date(millisecond);
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateStr = format.format(gc.getTime());
		return dateStr;
	}

	/**
	 * 转换格式种类
	 * 
	 * @param param
	 * @return
	 */
	public static DateFormat getDateFormat(int length) {
		DateFormat sdf = null;
		switch (length) {
		case 10:
			sdf = new SimpleDateFormat("yyyy-MM-dd");
			break;
		case 8:
			sdf = new SimpleDateFormat("yyyyMMdd");
			break;
		case 18:
			sdf = new SimpleDateFormat("yyyy-MM-dd HH:dd:ss");
			break;
		default:
			sdf = new SimpleDateFormat("yyyy-MM-dd");
			break;
		}

		return sdf;
	}

	/**
	 * 正对Java毫米时间
	 * @param vtime
	 * @return
	 */
	public static Timestamp long2timestamp(long vtime) {
		Timestamp timestamp = new Timestamp(vtime);
		return timestamp;
	}

	public static void main(String[] args) throws Exception {
		System.out.println(long2timestamp(System.currentTimeMillis()));
	}
}