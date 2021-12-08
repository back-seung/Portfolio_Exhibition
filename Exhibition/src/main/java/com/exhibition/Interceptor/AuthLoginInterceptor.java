package com.exhibition.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); // 세션의 id 가져오기
		Object obj = session.getAttribute("userId"); // 세션에서 userId를 가져온다.

		if (obj == null) { // 로그인이 되어있지 않다.
			response.sendRedirect(request.getContextPath() + "/login"); // 로그인으로 컨트롤러를 돌려버림.
			return false; // 원래 호출한 컨트롤러를 Intercept하여 다른 컨트롤러를 호출함, 원래 호출한 컨트롤러 요청 안하게 됨
		}
		return true; // 로그인 한 사람이므로 본래의 컨트롤러로 진행시킨다

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

}
