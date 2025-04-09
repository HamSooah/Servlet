package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException { // request로 요청하고 response로 받을 거다
		// header setting
		response.setCharacterEncoding("uft-8");
		response.setContentType("text/html");
		
		// request parameter
		int number = Integer.parseInt(request.getParameter("number"));
		// ↑ Integer.parseInt, Integer.valueof O
		// request.getParameter("number") 값이 바뀌는 것
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		out.print("<ul>");
		
		for (int i = 1; i <= 9; i++) {
			out.print("<li>" + number + " * " + i + " = " + (number * i) + "</li>");
		}
		
		out.print("</ul>");
		out.print("</body></html>");
	}
}
