<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송방식(get)</title>
</head>
<body>
	<h2>전송방식(get)</h2>
	<form method="get" action="2_get_ok.jsp">
		<p>아이디: <input type="text" name="userid"></p>
		<p>비밀번호: <input type="password" name="userpw"></p>
		<p><input type="submit" value="로그인"></p>
	</form>
	<p><a href="2_get_ok.jsp?userid=banana&userpw=2222">바나나 전송</a>
</body>
</html>