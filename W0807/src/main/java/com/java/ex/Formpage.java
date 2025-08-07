package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/Formpage")
public class Formpage extends HttpServlet {
	
	// doGet,doPost 들어오던지 항상 doAction을 실행시켜보세요
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction 실행");
		
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
