<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("userid", "apple");
//	F5AF389A29FE9C9EFB522B05C6B453D7 -> userid(apple)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션</title>
</head>
<body>
	<h2>세션</h2>
	<p>세션 아이디: <%=session.getId()%></p>
</body>
</html>