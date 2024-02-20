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
<title>CarR Login</title>
</head>
<body>
	<div class="container-fluid p-0">
		<div class="login-container">
			<div class="login-form">
				<form action="/car/forgotpassword/resetpassword" method="post">
					<div class="form-item">
						<h5 class="item-title">Nhập Mật Khẩu Mới</h5>
						<div class="item-form">
							<div class="mb-0">							
								<input name="newpw" type="password" class="form-control" placeholder="Mật Khẩu Mới">
							</div>
							<div class="form-error ${errorMessage==null?'d-lg-none':'' }">
								<span class="error-item">
									<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessage}</>
								</span>								
							</div>	
							<div class="mt-3">						
								<input name="confirmpw" type="password" class="form-control" placeholder="Xác Nhận ">
							</div>					
							<div class="form-error ${errorMessage1==null?'d-lg-none':'' }">
								<span class="error-item">
									<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessage1}</>
								</span>								
							</div>							
							<div class="form-btn"> 
								<button class="btn btn-success"><i class="fa-solid fa-arrow-right" style="color: #ffffff;"></i></button>
							</div>
							<div class="form-suggest">
								<span class="suggest-item">
									<a href="/car/login">Đăng Nhập</a>
								</span>
							</div>
						</div>						
					</div>
				</form>			
			</div>
		</div>	
	</div>
</body>
</html>