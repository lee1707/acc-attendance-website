<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>로그아웃</title>
</head>
<body>
	<h4>로그아웃</h4>
	<c:choose>
		<c:when test="${param.SIGNOUT_RESULT == 'SUCCESS'}">
			로그아웃 되었습니다. <br> 
		</c:when>
		<c:otherwise>
			로그아웃에 실패했습니다.<br>
		</c:otherwise>	
	</c:choose>
</body>
</html>
