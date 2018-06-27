<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

<!-- Begin page content -->
<main role="main" class="container">
<h1 class="mt-5">학습 게시판 글쓰기 양식</h1>
<p class="lead">
<p class="lead">
<div class="table-responsive">
	<form method="post" action="BoardInput.jsp" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${sessionScope.sessionID}">
		<table class="table">
			<tr>
				<td width="300"><input class="form-control"
					style="width: 850px;" type="text" name="title"
					placeholder="Please type the title" maxlength="50"></td>
			</tr>
			<tr>
				<td width="300"><textarea class="form-control"
						style="width: 850px; height: 200px;" cols="5" name="content"
						placeholder="Please type the content." autofocus required
						wrap="hard"></textarea></td>
			</tr>
			<tr>
				<td width="300"><input class="form-control" value="파일첨부"
					style="width: 850px;" type="file" name="board_file"></td>
			</tr>
		</table>
	</form>
</div>


<div class="row">
	<div class="col-lg-12 text-center">
		<input type="submit" class="btn btn-info" value="글쓰기"> 
		<a href="BoardInputView.jsp" class="btn btn-light"
			onclick="document.getElementById('1').reset()">리셋</a>
	</div>
</div>


</body>
</html>
</main>

<%@include file="Footer.jsp"%>
