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
	 * ��ȡ��ǰʱ�� ��ʽ��YYYY-MM-dd String
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
	 * ���ָ��ʱ���ϸ��µ�ʱ��
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
	 * ��ȡ���ڵ�ͨ�÷���
	 * 
	 * @param parameter
	 *            ������������ʾ��ǰʱ���parameter����ʱ��
	 * @return �κ�һ��
	 */
	public static String getSomeDay(int parameter, String format) {
		Calendar calendar = Calendar.getInstance(); // �õ�����
		calendar.setTime(new Date());// �ѵ�ǰʱ�丳������
		calendar.add(Calendar.DAY_OF_MONTH, parameter);

		SimpleDateFormat sdf = new SimpleDateFormat(format); // ����ʱ���ʽ
		String previous_day = sdf.format(calendar.getTime());

		return previous_day;
	}

	/**
	 * ���ݲ���date����ȡ��������
	 * 
	 * @param date
	 *            ĳһ�������
	 * @param parameter
	 *            ���β���,-1��ʾǰһ��,1��ʾ��һ��
	 * @return ĳһ�������
	 */
	public static String getSomeDay(String date, String format, int parameter) {
		Calendar calendar = Calendar.getInstance(); // �õ�����
		calendar.setTime(string2date(date, format));// �ѵ�ǰʱ�丳������
		calendar.add(Calendar.DAY_OF_MONTH, parameter); // ����Ϊǰһ��

		SimpleDateFormat sdf = new SimpleDateFormat(format); // ����ʱ���ʽ
		String previous_day = sdf.format(calendar.getTime()); // ��ʽ��ǰһ��

		return previous_day;
	}

	/**
	 * ������������ձȽ�
	 * 
	 * @param startDate
	 * @param endDate
	 * @param stype
	 *            : 0��ʾ�Ƚ��죬1��ʾ�Ƚ��£�2��ʾ�Ƚ���
	 * @return
	 */
	public static int compareDate(String startDate, String endDate,
			String format, int stype) {
		int n = 0;
		String[] u = { "��", "��", "��" };
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
		while (!c1.after(c2)) { // ѭ���Աȣ�ֱ����ȣ�n ������Ҫ�Ľ��
			// list.add(df.format(c1.getTime())); // ������԰Ѽ�������ڴ浽������ ��ӡ����
			n++;
			if (stype == 1) {
				c1.add(Calendar.MONTH, 1); // �Ƚ��·ݣ��·�+1
			} else {
				c1.add(Calendar.DATE, 1); // �Ƚ�����������+1
			}
		}
		n = n - 1;
		if (stype == 2) {
			n = (int) n / 365;
		}
		System.out.println(startDate + " -- " + endDate + " ������" + u[stype]
				+ ":" + n);
		return n;
	}

	/**
	 * ʱ���ת����String��ʽ��ʱ��
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
	 * ʱ��ת����ʱ���
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
	 * �ַ���ת��������
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
	 * yyyy-MM-ddʱ���ʽ�ж�
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
	 * һ������ʱ��
	 * 
	 * @param date
	 * @return
	 */
	public static String daymax2string(String date) {
		return date + " 23:59:59";
	}

	/**
	 * һ�������ʱ��
	 * 
	 * @param date
	 * @return
	 */
	public static String daymin2string(String date) {
		return date + " 00:00:00";
	}

	/**
	 * ���һ�������ʱ���
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
	 * ���һ�������ʱ���
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
	 * ��ȡ�µĵ�һ��
	 * 
	 * @param date
	 * @return
	 */
	public static String getTheMonthFirstDay(String date, String format) {
		Date dNow;
		try {
			dNow = string2date(date, format);
			// �µĵ�һ��ʱ��
			Date firstday = new Date();

			Calendar calendar = Calendar.getInstance(); // �õ�����
			calendar.setTime(dNow);// �ѵ�ǰʱ�丳������
			calendar.set(Calendar.DAY_OF_MONTH, 1); // ����Ϊǰһ��
			firstday = calendar.getTime(); // �õ�ǰһ���ʱ��

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // ����ʱ���ʽ
			String d = sdf.format(firstday); // ��ʽ��ǰһ��

			return d;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("[ERROR]" + e.getMessage(), e);
			return null;
		}
	}

	/**
	 * ��ת���� ʱ:��:��
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
	 * ����ת����ʱ���ʽ
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
	 * ת����ʽ����
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
	 * ����Java����ʱ��
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