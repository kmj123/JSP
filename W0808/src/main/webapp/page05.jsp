<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table,th,td{border:1px solid black; border-collapse:collapse;}
			table{width:1000px; margin: 50px; auto;}
			th,td{width:200px; height:40px; text-align:center;}
			h2{text-align:center;}
		</style>
	</head>
	<body>
	<%-- cmd ipconfig --%>
	<%
		out.println("<p>ip주소: ");
		out.println(request.getRemoteAddr());
		out.println("</p>");
	%>
	</body>
</html>