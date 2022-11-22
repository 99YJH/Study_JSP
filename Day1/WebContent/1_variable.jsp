<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
    <%
    String userid = "apple";
    String name = "김사과";
    int age = 20;
    double height = 160.5;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수</title>
<style>
	h2, p { text-align: center; }
</style>
</head>
<body>
	<h2>변수(현재시간: <%=new Date()%>)</h2>
	<p>아이디: <%=userid%></p>
	<p>아이디: <%=name%></p>
	<p>아이디: <%=age%></p>
	<p>아이디: <%=height%></p>
<%
	out.println("<p>안녕하세요. JSP 테스트 페이지입니다.</.p>");
	out.println("<p>"+name+"님 환영합니다!</.p>");
	System.out.println("콘솔에 출력합니다!");
	
	if(age>19){
		out.println("<p>성인입니다</p>");
	}else{
		out.println("<p>미성년입니다</p>");
	}
%>
</body>
</html>