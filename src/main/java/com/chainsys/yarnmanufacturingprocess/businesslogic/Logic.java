package com.chainsys.yarnmanufacturingprocess.businesslogic;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.Date;

public class Logic {
	private Logic() {

	}

	public static Date getInstanceDate() {
		Calendar vcalendar = Calendar.getInstance();
		String dates = vcalendar.get(Calendar.DATE) + "/" + (vcalendar.get(Calendar.MONTH) + 1) + "/"
				+ vcalendar.get(Calendar.YEAR);
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = null;
		try {
			date = new java.sql.Date(dateFormat.parse(dates).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;

	}
}