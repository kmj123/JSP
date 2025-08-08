<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
			</tr>
			<%
				for(int i=0;i<10;i++){
					out.println("<tr>");
					out.println("<td>"+(i+1)+"</td>");
					out.println("<td>jsp"+i+"</td>");
					out.println("</tr>");
				}
			%>
		</table>
	</body>
</html>