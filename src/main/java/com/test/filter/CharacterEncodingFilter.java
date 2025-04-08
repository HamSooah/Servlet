package com.test.filter;

import java.util.logging.Filter;
import java.util.logging.LogRecord;

import javax.servlet.FilterChain;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class CharacterEncodingFilter implements Filter { // ★ : filter는 총 2번 들어감!
	@Override
	public void doPost(ServletRequest request,
			ServletResponse response,
			FilterChain chain) {
		
		// 필터를 통과시 인코딩 설정
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
	}
}
