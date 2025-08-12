<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>섹션</title>
	</head>
	<body>
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
	<%!
		// 전역변수, 메소드 선언
	%>
	<!-- jsp 주석: java의 문법 적용 -->
	<h2>섹션저장하기</h2>
	<ul>
		<li>섹션 아이디: <%= session.getAttribute("session_id") %>
	</ul>
	<%
		session.setAttribute("session_id","aaa");
		session.setAttribute("session_nickName","길동스");
	%>
	<a href="./session.jsp"><p>섹션저장</p></a>
	
	<!--  // 표현식: 맨뒤 세미콜론붙이지 않음 -->
	<%-- <%= %> --%>
	
	</body>
</html>