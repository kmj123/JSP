<%@page import="java.util.Arrays"%>
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
				<th>제목</th>
				<th>내용</th>
			</tr>
			<tr>
				<td>이름</td>
				<td><%= request.getParameter("name") %></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><%= request.getParameter("id") %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><%= request.getParameter("pw1") %></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%= request.getParameter("mail_id") %></td>
				<span>@</span>
				<td><%= request.getParameter("mail_tail") %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%= request.getParameter("gender") %></td>
			</tr>
			<tr>
				<td>관심사</td>
				<%
				String[] str = request.getParameterValues("hobby");
				%>
				<td><%= Arrays.toString(str) %></td>
			</tr>
		</table>
	
	</body>
</html>