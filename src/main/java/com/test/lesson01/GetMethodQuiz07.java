package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07") // Quiz07.html에 있는 submit을 누르자 마자 /lesson01/quiz07여기로 연결 된다는 뜻!
public class Quiz07 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// response header
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request params (★ : name들을 받겠다!)
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price")); // valueOf도 가능!

		// 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문 결과</title></head><body>");
		if (address.startsWith("서울시") == false) {
			out.print(address);
			out.print(" 배달 불가 지역 입니다. <br>");
			out.print("결제 금액 : " + price + "원");
		} else if (card.equals("신한카드")) { // contains도 O!
			out.print(address + " 배달 준비중 <br>");
			out.print("결제 금액 : " + price + "원");
			out.print(" 결제 불가 카드 입니다.");
		} else {
			out.print(address + " <b>배달 준비중</b> <br>");
			out.print("결제 금액 : " + price + "원");
		}
		out.print("</body></html>");
	}
}
