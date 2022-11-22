<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();	// 쿠키를 요청하여 배열에 저장
	String userid = null;
	
	if(cookies != null){
		for(Cookie cookie : cookies){	// userid와 쿠키의 이름이 같으면 userid에 쿠키값 저장
			if("userid".equals(cookie.getName())){
				userid = cookie.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키로 구현한 로그인</title>
</head>
<body>
	<h2>쿠키로 구현한 로그인</h2>
	<%
		if(userid == null){
	%>
	<form method="post" action="3_login_ok.jsp">
		<p>아이디: <input type="text" name="userid"></p>
		<p>비밀번호: <input type="password" name="userpw"></p>
		<p><button>로그인</button></p>
	</form>
	<%
		}else{
	%>
		<h3><%=userid%>님 환영합니다 !!!!!!</h3>
		<p><a href="3_logout.jsp">로그아웃</a></p>	<!-- null값으로 덮어씌워서 쿠키값을 지움 -->
	<%
		}
	%>
</body>
</html>