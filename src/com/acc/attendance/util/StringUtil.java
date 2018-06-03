package com.acc.attendance.util;

import java.util.Objects;

public class StringUtil {
	public static boolean isEmpty(String str) {
		return Objects.isNull(str) || str.isEmpty();
	}
}
