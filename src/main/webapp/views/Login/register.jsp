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
				<form:form action="/car/register/submit" modelAttribute="khachhang">
					<div class="form-item">
						<h5 class="item-title">Đăng Ký</h5>
						<div class="item-form">
							<div class="mb-3">							
								<form:input path="email" class="form-control" placeholder="Email Đăng Nhập"/>
								<form:errors class="text-danger" path="email"/>
								<div class="form-error ${errorMessageE==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageE}</>
									</span>								
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="mb-3">
										<form:input path="hoKH" class="form-control" placeholder="Họ"/>
										<div class="form-error ${errorMessageH==null?'d-lg-none':'' }">
											<span class="error-item1">
												<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageH}</>
											</span>								
										</div>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="mb-3">
										<form:input path="tenKH" class="form-control" placeholder="Tên"/>
										<div class="form-error ${errorMessageT==null?'d-lg-none':'' }">
											<span class="error-item1">
												<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageT}</>
											</span>								
										</div>
									</div>
								</div>
							</div>	
							<div class="mb-3">							
								<form:input path="soDienThoai" class="form-control" placeholder="Số Điện Thoại"/>
								<form:errors class="text-danger" path="soDienThoai"/>
								<div class="form-error ${errorMessageS==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageS}</>
									</span>								
								</div>
							</div>
			
							<div class="mb-3">						
								<form:input path="matKhau" type="password" class="form-control" placeholder="Mật Khẩu"/>
								<form:errors class="text-danger" path="matKhau"/>
								<div class="form-error ${errorMessageP==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageP}</>
									</span>								
								</div>								
							</div>
							<div class="mb-3">						
								<input name="cfpassword" type="password" class="form-control" placeholder="Xác Nhận Mật Khẩu">
								<div class="form-error ${errorMessageP1==null?'d-lg-none':'' }">
									<span class="error-item1">
										<p><i class="fa-solid fa-xmark" style="color: #e91c1c;"></i> ${errorMessageP1}</>
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
					<form:hidden path="soCCCD" value=""/>
					<form:hidden path="hinhMatTruocCCCD" value="avatar.jpg"/>
					<form:hidden path="hinhMatSauCCCD" value="avatar.jpg"/>
					<form:hidden path="gioiTinh" value="true"/>
					<form:hidden path="ngaySinh" value="01/01/2024"/>
					<form:hidden path="avatar" value="avatar.jpg"/>
					<form:hidden path="soGPLX" value=""/>
					<form:hidden path="hinhMatTruocGPLX" value=""/>
					<form:hidden path="hinhMatSauGPLX" value=""/>
					<form:hidden path="tinh" value=""/>
					<form:hidden path="huyen" value=""/>
					<form:hidden path="xa" value=""/>
					<form:hidden path="duong" value=""/>
					<form:hidden path="active" value="true"/>
				</form:form>
			</div>
		</div>	
	</div>
</body>
</html>