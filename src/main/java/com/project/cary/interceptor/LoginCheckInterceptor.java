package com.project.cary.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.project.cary.domain.UserVO;

import lombok.extern.log4j.Log4j;

@Log4j
public class LoginCheckInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse response, Object handler) throws Exception {
		log.info("LoginCheckInterceptor... preHandle()");
		
		HttpSession ses=req.getSession();
		UserVO loginUser=(UserVO)ses.getAttribute("loginUser");
		if(loginUser!=null) {
			return true;
		}
		
		String str="It is possible to use you to log-in";
		String loc=req.getContextPath()+"/index";
		
		String viewName="/WEB-INF/views/msg.jsp";
		
		req.setAttribute("message", str);
		req.setAttribute("loc", loc);
		
		RequestDispatcher disp=req.getRequestDispatcher(viewName);
		disp.forward(req, response);
		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		log.info("LoginCheckInterceptor... postHandle()");
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.info("LoginCheckInterceptor... afterCompletion()");
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}
}
