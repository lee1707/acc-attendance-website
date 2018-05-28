package com.acc.attendance;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;

public class LearningReflection {
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
		Class<?> clazz = Class.forName("com.acc.attendance.Loader");
			
		System.out.println("get class - " + clazz.getName());
		
		Object obj = clazz.newInstance();
		
		Method getMyName = clazz.getDeclaredMethod("getMyName");
		String myName = (String)getMyName.invoke(obj);
		
		System.out.println("My name is " + myName);
		
		System.out.println(new LearningReflection().getDateStringNow(0, 2));
	}
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy. MM. dd HH:mm:ss.SSS");
	
	public String getDateStringNow(int plusDays, int plusHours) {
		return LocalDateTime.now()
				.plusDays(plusDays)
				.plusHours(plusHours)
				.format(formatter);
	}
}
