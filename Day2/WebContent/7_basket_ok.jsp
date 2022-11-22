<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%
	request.setCharacterEncoding("UTF-8");
	// String product = request.getParameter("product");
	String product = request.getParameter("product") == null ? "" : request.getParameter("product");	// null일때의 문제 처리
	// 상품저장
	List list = (List)session.getAttribute("productList");
	
	if(list == null){
		list = new ArrayList();
	}
	
	list.add(product);
	session.setAttribute("productList", list);
%>
<script>
	alert('<%=product%>상품이 장바구니에 추가되었습니다');
	location.href='7_basket.jsp';
</script>