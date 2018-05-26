<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
</head>
<body>
	<form action=signin method=POST
					onSubmit="CURRENT_URL.value=window.location.href">
	아이디: <input type=text name=ID size=12><br>
	패스워드: <input type=password name=PASSWORD size=12><br>
	<input type=hidden name=CURRENT_URL>
	<input type=submit value='로그인'><br>
</form>
</body>
</html>
