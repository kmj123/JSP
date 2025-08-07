package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Page01")
public class Page01 extends HttpServlet {
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws  IOException {
		System.out.println("doAction 실행");
		
		// 웹페이지 생성 가능
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();	// 
		
		writer.println("<html>");
		writer.print("<header>");
		writer.print("<title>서블릿페이지</title>");
		writer.print("</header>");
		writer.print("<body>");
		writer.print("<h2>servlet페이지</h2>");
		writer.print("<p>서블릿에서 페이지를 제작해서 실행시켰습니다</p>");
		writer.print("</body>");
		writer.print("</html>");
		
		writer.close();
		
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 실행");
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 실행");
		doAction(request,response);
	}

}
