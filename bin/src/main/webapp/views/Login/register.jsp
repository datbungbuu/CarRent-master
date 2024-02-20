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
	<link href="/css/loginStyle.css" rel="stylesheet">
	
	<script type="text/javascript">
		
		function registerClick(){
			var checkbox =  document.getElementById("checkDetail");
			var btn = document.getElementById("btn-register");
			if(checkbox.checked == true){
				btn.disabled = false ;
			}else{
				btn.disabled = true ;
			}
			
		}
	</script>
<head>
<meta charset="UTF-8">
<title>CarR Register</title>
</head>
<body>
	<div class="container-fluid p-0">
		<div class="login-container">
			<div class="login-form">
				<form:form action="/car/register/submit" modelAttribute="account">
					<div class="form-item">
						<h5 class="item-title">Đăng Ký</h5>
						<div class="item-form">
							<div class="mb-3">							
								<form:input path="username" class="form-control" placeholder="Tên Đăng Nhập"/>
								<form:errors class="text-danger" path="username"/>
								<div class="form-error ${errorMessageU==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p>${errorMessageU}</>
									</span>								
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="mb-3">
										<form:input path="firstname" class="form-control" placeholder="Họ"/>
										<form:errors class="text-danger" path="firstname"/>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="mb-3">
										<form:input path="lastname" class="form-control" placeholder="Tên"/>
										<form:errors class="text-danger" path="lastname"/>
									</div>
								</div>
							</div>	
							<div class="mb-3">							
								<form:input path="phonenumber" class="form-control" placeholder="Số Điện Thoại"/>
								<form:errors class="text-danger" path="phonenumber"/>
								<div class="form-error ${errorMessageS==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p>${errorMessageS}</>
									</span>								
								</div>
							</div>
							<div class="mb-3">							
								<form:input path="email" class="form-control" placeholder="Email"/>
								<form:errors class="text-danger" path="email"/>
								<div class="form-error ${errorMessageE==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p>${errorMessageE}</>
									</span>								
								</div>
							</div>
							<div class="mb-3">						
								<form:input path="password" type="password" class="form-control" placeholder="Mật Khẩu"/>
								<form:errors class="text-danger" path="password"/>								
							</div>
							<div class="mb-3">						
								<input name="cfpassword" type="password" class="form-control" placeholder="Xác Nhận Mật Khẩu">
								<div class="form-error ${errorMessageP==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p>${errorMessageP}</>
									</span>								
								</div>
							</div>
							<div class="mb-3 form-check">
								<input id="checkDetail" onclick="registerClick()" type="checkbox" class="form-check-input">			
								<label class="form-check-label">Tôi đồng ý với chính sách của CarR. <a href="https://www.mioto.vn/privacy" style="color: #198754">Chi tiết</a></label>
							</div>
							<div class="form-btn"> 
								<button id="btn-register" class="btn btn-success"  disabled><i class="fa-solid fa-arrow-right" style="color: #ffffff;"></i></button>
							</div>
							<div class="form-suggest">
								<span class="suggest-item">
									<a href="/login">Bạn Đã Có Tài Khoản?</a>
								</span>								
							</div>
						</div>						
					</div>
					<form:hidden path="gender" value="true"/>
					<form:hidden path="birthday" value="01/01/2024"/>
					<form:hidden path="avatar" value="DatBruceLee.jpg"/>
					<form:hidden path="active" value="true"/>
					<form:hidden path="role" value="false"/>
				</form:form>
			</div>
		</div>	
	</div>
</body>
</html>