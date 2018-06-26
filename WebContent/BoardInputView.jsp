<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

<!-- Begin page content -->
<main role="main" class="container">
<h1 class="mt-5">학습 게시판 글쓰기</h1>
<p class="lead">
<p class="lead">
<div class="table-responsive">
	<form id="boardInputForm">
		<table class="table">
			<tr>
				<td width="300"><input class="form-control"
					style="width: 850px;" type="text" name="title"
					placeholder="Please type the title"></td>
			</tr>
			<tr>
				<td width="300"><textarea class="form-control"
						style="width: 850px; height: 200px;" cols="5" name="content"
						placeholder="Please type the content." autofocus required
						wrap="hard"></textarea></td>
			</tr>
		</table>
	</form>
</div>


<div class="row">
	<div class="col-lg-12 text-center">
		<a href="Attendance-InputList" class="btn btn-info" id="btnCheck">완료</a>
		<a href="BoardInputView.jsp" class="btn btn-light" onclick="document.getElementById('1').reset()">리셋</a>
	</div>
</div>


</body>
</html>
</main>

<script type="text/javascript">
function postBoard(boardInput) {
	console.log('request', boardInput);
	$.ajax({
		url: './Board-Input',
		method: 'POST',
		data: JSON.stringify(boardInput),
		success: function(response) {
			alert('게시글이 저장되었습니다.');
		}, error: function() {
			alert('게시글을 저장하는 중에 오류가 발생했습니다.');
		}
	});
}
$(document).ready(function() {
	$('#btnCheck').click(function(e) {
		e.preventDefault();
		
		var status = {
		id: this.value,
		content : this.value
		}

		//push는 list의 add같은것. array에 status를 담음
		postBoard(status);
	});
})
</script>

<%@include file="Footer.jsp"%>
