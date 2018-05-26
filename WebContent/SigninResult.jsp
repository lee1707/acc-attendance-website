<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
</head>
<body>
	<h4>로그인</h4>
	<c:choose>
		<c:when test="${param.SIGNIN_RESULT == 'SUCCESS'}">
			로그인 되었습니다. <br> 안녕하세요 ${sessionScope.SIGNIN_ID}님.
		</c:when>
		<c:otherwise>
			로그인에 실패했습니다.<br>아이디와 패스워드를 체크하세요
		</c:otherwise>	
	</c:choose>
</body>
</html>
