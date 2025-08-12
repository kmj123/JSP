<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키리스트</title>
		<style>
		  h2{text-align: center;}
		  table,th,td{
		  text-align:center;
		  border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px;}
		  table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
	<%
		String nct_yushi = request.getParameter("nct_yushi");
		String nct_yushi_count = request.getParameter("nct_yushi_count");
		String ive_jwy = request.getParameter("ive_jwy");
		String ive_jwy_count = request.getParameter("ive_jwy_count");
		
		if(request.getParameter("product") != null){
			// 쿠키저장
			// 4개 쿠키 객체 선언
			Cookie cookie = new Cookie("nct_yushi",nct_yushi);
			Cookie cookie2 = new Cookie("nct_yushi_count",nct_yushi_count);
			Cookie cookie3 = new Cookie("ive_jwy",ive_jwy);
			Cookie cookie4 = new Cookie("ive_jwy_count",ive_jwy_count);
			
			// 쿠키 시간 설정
			cookie.setMaxAge(60*10);
			cookie.setMaxAge(60*10);
			cookie.setMaxAge(60*10);
			cookie.setMaxAge(60*10);
			
			// 쿠키 저장
			response.addCookie(cookie);
			response.addCookie(cookie2);
			response.addCookie(cookie3);
			response.addCookie(cookie4);
		} else {
			 // 쿠키 삭제
			 Cookie[] cookies = request.getCookies();
			 for(Cookie cookie : cookies){
				 cookie.setMaxAge(0);
				 response.addCookie(cookie);
			 }
		}
		
		response.sendRedirect("./product_list.jsp");
	%>
	
	</body>
</html>