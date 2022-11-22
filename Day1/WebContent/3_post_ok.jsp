<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); // 사용자가 서버로 전달할때 문자를 인코딩
	String userid = request.getParameter("userid"); // userid변수에 form태그 userid값 저장
	String userpw = request.getParameter("userpw");	// userpw변수에 form태그 userpw값 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전송방식(post)</title>
</head>
<body>
	<h2>전송방식</h2>
	<p>아이디: <%=userid %></p>
	<p>비밀번호: <%=userpw%></p>
</body>
</html>