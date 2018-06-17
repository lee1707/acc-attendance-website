<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../../../favicon.ico">

<title>출석부</title>

<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="<%=request.getContextPath()%>/assets/css/sticky-footer-navbar.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/assets/css/acc.css"
	rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>

	<header>
		<!-- Fixed navbar -->
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="Main.jsp">Arivo Coding Club</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="Main.jsp">홈 <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="intro.jsp">ACC소개</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="playground.jsp">놀이터</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="http://example.com"
						id="dropdown01" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">학습활동</a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item" href="attendanceInput.jsp">출결입력</a> <a
								class="dropdown-item" href="Attendance-list">출석확인</a> <a
								class="dropdown-item" href="Progress-list">진도표</a> <a
								class="dropdown-item" href="board-list">게시판</a>
						</div></li>
				</ul>
			</div>

			<c:choose>
				<c:when test="${sessionScope.SIGNIN_ID == null}">
					<a href="signinForm.html"
						class="btn btn-outline-success my-2 my-sm-0"
						onclick="document.getElementById('1').submit()">로그인</a>
				</c:when>
				<c:otherwise>
					<jsp:include page="Signout.jsp" />
				</c:otherwise>
			</c:choose>
			<a href="signup.html" class="btn btn-outline-success my-2 my-sm-0"
				onclick="document.getElementById('1').submit()">회원가입</a>

		</nav>
	</header>

