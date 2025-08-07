package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/FormPage")
public class FormPage extends HttpServlet {
	
	// doGet,doPost 들어오던지 항상 doAction을 실행시켜보세요
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction 실행");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		System.out.println("id:"+id);
		System.out.println("name:"+name);
		System.out.println("pw:"+pw);
		
		// 웹페이지 생성 가능
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();	// 
		
		writer.println("<html>");
		writer.print("<header>");
		writer.print("<title>응답페이지</title>");
		writer.print("</header>");
		writer.print("<body>");
		writer.print("<h2>입력정보</h2>");
		writer.print("<p>아이디: "+ id +"</p>");
		writer.print("<p>이름: "+ name +"</p>");
		writer.print("<p>패스워드: "+ pw +"</p>");
		writer.print("</body>");
		writer.print("</html>");
		
		writer.close();
		
	}
	
	// get 방식으로 들어올때 호출
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("goGet 실행");
		doAction(request,response);
	}

	// post 방식으로 들어올때 호출
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 실행");
		doAction(request,response);
	}


}
