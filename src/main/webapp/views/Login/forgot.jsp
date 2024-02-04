<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/50eedbacb3.js" crossorigin="anonymous"></script>
	<link href="/css/forgotStyle.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>CarR ForgotPassword</title>
</head>
<body>
	<div class="container-fluid p-0">
		<div class="login-container">			
				<div class="d-flex" style="width: 1250px;">
					<div class="page-item">
						<div class="page-title me-auto p-2">
						  	<h1>QUÊN MẬT KHẨU</h1>
						</div>
					</div>
					
					<div class="p-2">
						<div class="login-form">
						  	<form action="/car/forgotpassword/submit" method="post">
								<div class="form-item">
									<div class="item-title">
										<h1>Nhập Email</h1>
										<h5>Email được dùng để đăng ký tài khoản.</h5>
									</div>
									<div class="item-form">
										<div class="mb-3">							
											<input name="email" type="text" class="form-control" placeholder="Email">
										</div>							
										<div class="form-error ${errorMessage==null?'d-lg-none':'' }">
											<span class="error-item">
												<p>${errorMessage}</>
											</span>								
										</div>							
										<div class="form-btn"> 
											<button class="btn btn-success"><i class="fa-solid fa-arrow-right" style="color: #ffffff;"></i></button>
										</div>								
									</div>						
								</div>
							</form>
						</div>
					</div>
				</div>
				
				
				<%-- <form:form action="login/submit" modelAttribute="account">
					<div class="form-item">
						<h5 class="item-title">Đăng Nhập</h5>
						<div class="item-form">
							<div class="mb-3">							
								<form:input path="username" type="text" class="form-control" placeholder="Tên Đăng Nhập"/>
							</div>
							<div class="mb-3">						
								<form:input path="password" type="password" class="form-control" placeholder="Mật Khẩu"/>
							</div>
							<div class="mb-3 form-check">
								<form:input path="" type="checkbox" class="form-check-input"/>
								<form:label path="" class="form-check-label">Lưu Đăng Nhập</form:label>
							</div>
							<div class="form-btn"> 
								<form:button type="submit" class="btn btn-success"><i class="fa-solid fa-arrow-right" style="color: #ffffff;"></i></form:button>
							</div>
							<div class="form-suggest">
								<span class="suggest-item">
									<a href="">Bạn Không Thể Đăng Nhập?</a>
								</span>
								<span class="suggest-item">
									<a href="">Tạo Tài Khoản</a>
								</span>
							</div>
						</div>						
					</div>
				</form:form> --%>
			
		</div>	
	</div>
</body>
</html>