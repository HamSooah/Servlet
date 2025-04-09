package com.test.filter;

@WebFilter("/*")
public class CharacterEncodingFilter implements Filter { // ★ : filter는 총 2번 들어감!
	
	// 주석으로 내용 추가
	
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
