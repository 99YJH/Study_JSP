<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color: deepskyblue;
	}
</style>
</head>
<body>
	<h2>pageContext 객체</h2>
	<p>pageContext의 forward() 예제입니다. 화면에서는 보이지 않습니다.<p>
	<p>세션으로 전달받은 아이디: <%=session.getAttribute("userid")%></p>
</body>
</html>