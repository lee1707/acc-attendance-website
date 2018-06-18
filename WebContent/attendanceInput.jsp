<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>

<style>
#abroad {
	color: Gainsboro;
}
</style>

<!-- Begin page content -->
<main role="main" class="container">
<h1 class="mt-5">출결 입력</h1>
<p class="lead">
<form action="/Attendance-InputList" method="post">
<div class="table-responsive">
	<table class="table">
		<thead>
			<tr>
				<th>이름</th>
				<th>아이디</th>
				<th>출결</th>
				<th>비고</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="hidden" name="num" value="1" class="member" />이준영</td>
				<td>LJY</td>
				<td>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="1" value="o"
							checked />출석
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="1" value="x" />결석
						</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td><input type="hidden" name="num" value="2" class="member" />윤시훈</td>
				<td>YSH</td>
				<td>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="2" value="o"
							checked />출석
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="2" value="x" />결석
						</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td><input type="hidden" name="num" value="3" class="member" />이한솔</td>
				<td>RHS</td>
				<td>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="3" value="o"
							checked />출석
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="3" value="x" />결석
						</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td><input type="hidden" name="num" value="4" class="member" />이강은</td>
				<td>LGE</td>
				<td>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="4" value="o"
							checked />출석
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="4" value="x" />결석
						</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td><input type="hidden" name="num" value="5" class="member" />최평강</td>
				<td>CPG</td>
				<td>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="5" value="o"
							checked />출석
						</label>
					</div>
					<div class="form-check form-check-inline">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="5" value="x" />결석
						</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr id="abroad">
				<td>오도근</td>
				<td>ODG</td>
				<td></td>
				<td>활동하지 않는 멤버</td>
			</tr>
		</tbody>
	</table>
</div>
</form>

<div class="row">
	<div class="col-lg-12 text-center">
		<a href="Attendance-InputList" class="btn btn-info" id="btnCheck">완료</a>
			 <a href="attendanceInput.jsp"
			class="btn btn-light" onclick="document.getElementById('1').reset()">리셋</a>
	</div>
</div>
</form>
</p>
</main>

<script>
//여기 아래가 핵심
function postAttend(memberAttends) {
	console.log('request', memberAttends);
	$.ajax({
		//Attendance-InputList로 보냄
		url: './Attendance-InputList',
		method: 'POST',
		//??
		data: JSON.stringify(memberAttends),
		success: function(response) {
			alert('출결 상태가 저장되었습니다.');
		}, error: function() {
			alert('출결 상태를 저장하는 중에 오류가 발생했습니다.');
		}
	});
}
$(document).ready(function() {
	$('#btnCheck').click(function(e) {
		e.preventDefault();
		
		var array = [];
		//계속 보냄 돌고 돌려서.
		$('[name=num]').each(function() {
		var status = {
		id: this.value,
		//status checked를 보냄
		status: $('[name=' + this.value + ']:checked').val(), 
		count: 0,
		extra: null
		}

		//push는 list의 add같은것. array에 status를 담음
		array.push(status);
		});
		
		//array를 넣어서 postAttend호출
		postAttend(array);
	});
})
</script>

<%@include file="Footer.jsp"%>
