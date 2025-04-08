package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// ↓ 내가 치고 들어 갈 주소
@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// response header (★ : header setting)
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		// servlet : java(기본) + html
		// 1+2+3+4+...+10 sum => 태그 출력
		
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		out.print("<html><head><title>합계</title></head><body>");
		out.print("합계 : <b>" + sum + "</b>");
		out.print("</body></html>");
	}
}
