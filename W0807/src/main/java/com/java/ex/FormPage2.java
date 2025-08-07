package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/FormPage2")
public class FormPage2 extends HttpServlet {
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws IOException{
		System.out.println("doAction 실행");
		
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		int Kor = Integer.parseInt(kor);
		String eng = request.getParameter("eng");
		int Eng = Integer.parseInt(eng);
		String math = request.getParameter("math");
		int Math = Integer.parseInt(math);
		int total = Kor+Eng+Math;
		double avg = total/3.0;
		
		// 웹페이지 생성 가능
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();	// 
		
		writer.println("<html>");
		writer.println("<header>");
		writer.println("<title>학생성적</title>");
		writer.println("</header>");
		writer.println("<body>");
		writer.print("<p>이름: "+ name +"</p>");
		writer.print("<p>국어: "+ Kor +"</p>");
		writer.print("<p>영어: "+ Eng +"</p>");
		writer.print("<p>수학: "+ Math +"</p>");
		writer.print("<p>합계: "+ total +"</p>");
		writer.printf("<p>평균: %.2f", avg ,"</p>");
		writer.println("</body>");
		writer.println("</html>");
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet실행");
		doAction(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet실행");
		doAction(request,response);
	}

}
