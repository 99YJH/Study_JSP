<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String userpw_re = request.getParameter("userpw_re");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	String hobby[] = request.getParameterValues("hobby");
	String zipcode = request.getParameter("zipcode");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String address3 = request.getParameter("address3");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p><%out.println(userid);%></p>
	<p><%out.println(userpw);%></p>
	<p><%out.println(userpw_re);%></p>
	<p><%out.println(name);%></p>
	<p><%out.println(hp);%></p>
	<p><%out.println(email);%></p>
	<p><%out.println(gender);%></p>
	<p><% for(int i=0;i<hobby.length;i++) out.print(hobby[i]+" "); %></p>
	<p><%out.println(zipcode);%></p>
	<p><%out.println(address1);%></p>
	<p><%out.println(address2);%></p>
	<p><%out.println(address3);%></p>
	
</body>
</html>