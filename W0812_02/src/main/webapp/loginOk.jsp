<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%
		if(request.getParameter("id").equals("aaa") &&
			request.getParameter("pw").equals("1111")){
			session.setAttribute("session_id", "aaa");
			response.sendRedirect("./main.jsp?loginCheck=1");
		} else {
			response.sendRedirect("./login.jsp?loginCheck=0");
		}
			
	%>
	
	</body>
</html>