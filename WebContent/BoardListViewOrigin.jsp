<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>학습 게시판 글읽기</title>
</head>
<body>
	<h4>학습 게시판 목록 모아보기</h4>
	<table border=1>
		<tr>
			<td width=40>순번</td>
			<td width=300>제목</td>
			<td width=80>작성자</td>
			<td width=90>작성일자</td>
			<td width=70>작성시각</td>
		</tr>
		<c:forEach var="cnt" begin="0" end="${BOARD_LIST.listSize -1}">
			<tr>
				<td>${BOARD_LIST.seqNo[cnt]}</td>
				<td>${BOARD_LIST.title[cnt]}</a></td>
				<td>${BOARD_LIST.writer[cnt]}</td>
				<td>${BOARD_LIST.date[cnt]}</td>
				<td>${BOARD_LIST.time[cnt]}</td>
			</tr>
		</c:forEach>
	</table>
	<c:if test="${!BOARD_LIST.lastPage}">
		<a href='board-list?LAST_SEQ_NO=${BOARD_LIST.seqNo[BOARD_LIST.listSize - 1]}'>다음 페이지</a>
	</c:if>
</body>
</html>