<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

	<!-- Header -->
		<div class="c-header">
			<div class="c-container">				
				<a>		
					<div class="header-logo">
						<img src="/img/iconCarRent1.jpg">		
					</div>									
				</a>
				<div class="header-menu">
					<c:choose>
						<c:when test="${currentAccount.role == true }">
							<a href="car/home">Quản Lý</a>
						</c:when>
					</c:choose>				
					<a href="#">Xe Cho Thuê</a>
					<a href="#">Về CarR</a>
					<a href="#">Trở Thành Đối Tác</a>
					<c:choose>
						<c:when test="${not empty currentAccount}">
							<a href="#">Chuyến Của Tôi</a>
						</c:when>
					</c:choose>				
					<div class="vertical-line"></div>
					<c:choose>
						<c:when test="${not empty currentAccount}">
							<div>
								<div class="notification">
									<i class="fa-regular fa-bell" style="font-size: 1.3rem;"></i>
								</div>
							</div>
							<div class="profile">
								<div class="profile-avatar">
									<img alt="" src="/img/${currentAccount.avatar}">
								</div>									
								<div class="dropdown">
								  <a class="btn border-0 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								    <span class=name>${currentAccount.firstname} ${currentAccount.lastname}</span>
								  </a>
								
								  <ul class="dropdown-menu">
								    <li><a class="dropdown-item" href="#">Quản Lý Tài Khoản</a></li>
								    <li><a class="dropdown-item" href="/car/logout">Đăng Xuất</a></li>
								  </ul>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<a href="/car/register">Đăng Ký</a>
							<a class="btn btn-light btn-login" href="/car/login">Đăng Nhập</a>
						</c:otherwise>
					</c:choose>					
				</div>
			</div>
		</div>