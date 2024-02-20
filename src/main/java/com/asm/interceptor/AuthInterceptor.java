package com.asm.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.asm.entity.Account;
import com.asm.entity.KhachHang;
import com.asm.service.SessionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class AuthInterceptor implements HandlerInterceptor{

	@Autowired
	SessionService session;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		KhachHang kh = (KhachHang) session.getAttribute("currentAccount");
		String errorLogin = "";
		String errorAdmin = "";
		if(kh == null) {
			errorLogin = "VuiLongDangNhap";
		}
//		else if(!a.isRole() && uri.startsWith("car/admin")) {
//			errorAdmin = "TruyCapBiTuChoi";
//		}
		if(errorLogin.length() > 0) {
			session.setAttribute("security-uri", uri);
			response.sendRedirect("/car/login?error=" + errorLogin);
			return false;
		}
//		else if(errorAdmin.length() > 0) {
//			session.setAttribute("security-uri", uri);
//			response.sendRedirect("/car/index?error=" + errorAdmin);
//			return false;
//		}
		
		return true;
	}
	
	
}
