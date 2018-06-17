package com.acc.attendance.util;

import java.util.ArrayList;
import java.util.Objects;

public class StringUtil {
	public static boolean isEmpty(String name) {
		return Objects.isNull(name) || name.isEmpty();
	}
}
