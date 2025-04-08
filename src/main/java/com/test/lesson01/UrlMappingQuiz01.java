package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Quiz01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지 - response header
		response.setContentType("text/palin");
		response.setCharacterEncoding("utf-8");
		
		// 날짜 객체 (★ : import시 util로!)
		Date now = new Date();
		
		// 출력
		PrintWriter out = response.getWriter();
		
		// formatter
		// 2025년 4월 3일
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 dd일");
				
		out.println("오늘의 날짜는 " + sdf.format(now));
		
	}
}