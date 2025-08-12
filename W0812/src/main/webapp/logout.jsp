<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<h2>로그인 아웃</h2>
		<%
		session.invalidate();
		response.sendRedirect("./main.jsp");
			
		%>
	<a href="./main.jsp"><p>로그인페이지</p></a>
	</body>
</html>