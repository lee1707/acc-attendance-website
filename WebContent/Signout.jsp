<%@page contentType="text/html; charset=utf-8"%>

<form 
	class="form-inline my-2 my-lg-0"
	action=signout
	method=POST
	onsubmit="$('input[name=CURRENT_URL]').val(window.location.href)">
	<span class="navbar-text">안녕하세요, ${sessionScope.SIGNIN_ID}님</span>
	<input type=hidden name=CURRENT_URL>
	<button class="btn btn-outline-success my-2 my-sm-0" type="submit" value='로그아웃'>로그아웃</button>
</form>