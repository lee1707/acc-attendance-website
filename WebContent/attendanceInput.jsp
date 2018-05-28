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
				<td>이준영</td>
				<td>LJY</td>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_LJY"
							value="attendance" id="attendance"> <label
							class="form-check-label" for="attendance">출석</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_LJY"
							value="absent" id="absent" checked> <label
							class="form-check-label" for="absent">결석</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td>윤시훈</td>
				<td>YSH</td>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_YSH"
							value="attendance" id="attendance"> <label
							class="form-check-label" for="attendance">출석</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_YSH"
							value="absent" id="absent" checked> <label
							class="form-check-label" for="absent">결석</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td>이한솔</td>
				<td>RHS</td>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_RHS"
							value="attendance" id="attendance"> <label
							class="form-check-label" for="attendance">출석</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_RHS"
							value="absent" id="absent" checked> <label
							class="form-check-label" for="absent">결석</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td>이강은</td>
				<td>LGE</td>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_LGE"
							value="attendance" id="attendance"> <label
							class="form-check-label" for="attendance">출석</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_LGE"
							value="absent" id="absent" checked> <label
							class="form-check-label" for="absent">결석</label>
					</div>
				</td>
				<td><input class="form-control" type="text" name="memo"
					placeholder="Please type the memo."></td>
			</tr>
			<tr>
				<td>최평강</td>
				<td>CPG</td>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_CPG"
							value="attendance" id="attendance"> <label
							class="form-check-label" for="attendance">출석</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="chk_info_CPG"
							value="absent" id="absent" checked> <label
							class="form-check-label" for="absent">결석</label>
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


<div class="row">
	<div class="col-lg-12 text-center">
		<a href="#" class="btn btn-info"
			onclick="document.getElementById('1').submit()">완료</a> 
		<a href="#" class="btn btn-light"
			onclick="document.getElementById('1').reset()">리셋</a>
	</div>
</div>
</form>
</p>
</main>

<%@include file="Footer.jsp"%>
