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
	<link href="/css/indexStyle.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>CarRent - Ứng dụng cho thuê xe ô tô số 1 Việt Nam.</title>
</head>
<body>
	<div class="carrent-layout">
		<!-- Header -->
		<%@include file="Layout/header.jsp" %>
		
		<!-- ---------------------------------------------------------------------------------------------------- -->
		<!-- Body -->
		<div class="c-body">
		
			<!-- Banner -->
			<div class="body-banner">
				<div class="c-container">
					<div class="body-background" style="background-image: url('/img/Banner-ASM1.jpg');">
						<h1>CarR - Where You Go We Go</h1>
						<div class="white-line"></div>
						<h6>
							Trải nghiệm sự khác biệt từ
							<span style="color: #009966;">hơn 2000+</span>
							xe gia đình đời mới khắp Việt Nam
						</h6>
					</div>
				</div>
			</div>	
				
			<!-- Promotions -->
			<%-- <div class="promotion">
				<div class="c-container">
					<h1>Chương Trình Khuyến Mãi</h1>
					<h5>Nhận Nhiều Ưu Đãi Hấp Dẫn Từ CarR</h5>
				</div>
				<div class="c-container">
					<div id="promotion" class="carousel slide">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <div class="row">
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
						      	<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>					      		
					      	</div>
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
					      		<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>	
					      	</div>
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
					      		<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>	
					      	</div>
					      </div>
					    </div>
					    <div class="carousel-item">
					      <div class="row">
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
						      	<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>					      		
					      	</div>
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
					      		<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>	
					      	</div>
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
					      		<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>	
					      	</div>
					      </div>
					    </div>
					    <div class="carousel-item">
					      <div class="row">
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
						      	<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>					      		
					      	</div>
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
					      		<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>	
					      	</div>
					      	<div class="col-sm-4 col-lg-4 col-xs-4" style="padding: 0px 20px;">
					      		<div class="promotion-item">
						      		<img class="promotion-img" alt="" src="/img/DatBruceLee.jpg">
						      	</div>	
					      	</div>
					      </div>
					    </div>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#promotion" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#promotion" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>
				</div>
			</div> --%>
		
			<!-- Car-Item -->
			<div class="car-background">
				<div class="c-container">
					<h1>Xe Dành Cho Bạn</h1>
				</div>
				<div class="c-container">
					<div class="row">
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
						
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
						
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
						
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
						
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
						
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
						
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
						
						<div class="col-lg-3" style="padding: 12px 12px;">
							<a class="car-item" href="#">
								<div class="car-item-box">
									<div class="car-item-img">
										<div class="car-img">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-note">
											<span class="c-note">
												Đặt Xe Nhanh
												<i class="fa-solid fa-bolt" style="color: yellow;"></i>
											</span>
											<span class="c-note">
												Miễn Thế Chấp
												<i class="fa-solid fa-lock-open" style="color: green;"></i>
											</span>										
										</span>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<div class="car-avatar">
											<img alt="" src="/img/DatBruceLee.jpg">
										</div>
										<span class="car-discount">Giảm 100%</span>
									</div>
									
									<div class="car-item-detail">
										<div class="c-detail-type">
											<span class="type-item">Số tự động</span>
											<span class="type-item-1">Giao Xe Tận Nơi</span>
										</div>
										<div class="c-detail-name">
											<p>Car Name</p>
											<i class="fa-solid fa-shield-halved" style="color: green"></i>
										</div>
										<div class="c-detail-address">
											<i class="fa-solid fa-location-dot" style="color: red"></i>
											<p>Address</p>
										</div>
										<div class="c-detail-line"></div>
										<div class="c-detail-price">
											<div class="price-info">
												<i class="fa-solid fa-person-walking-luggage"></i>
												<span class="num-trip">Số Chuyến</span>
											</div>
											<div class="price-warp">
												<span class="price-origin">199K</span>
												<span class="price-special">188K</span>
											</div>
										</div>
									</div>
								</div>	
							</a>
						</div>
					</div>
				</div>
			</div>
			
			<!-- Outstanding Citys -->
			<div class="city-background">
				<div class="c-container">
					<h1>Địa Điểm Nổi Bật</h1>
				</div>
				<div class="c-container">
					<div id="outstancity" class="carousel slide">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <div class="row">
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
						      	<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/HoChiMinh.jpg">
							      		</div>
							      		<p>TP. HỒ CHÍ MINH</p>
							      	</a>				      		
						      	</div>					      		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/HaNoi.jpg">
							      		</div>
							      		<p>HÀ NỘI</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/DaLat.jpg">
							      		</div>
							      		<p>ĐÀ LẠT</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/VungTau.jpg">
							      		</div>
							      		<p>VŨNG TÀU</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      </div>
					    </div>
					    <div class="carousel-item">
					      <div class="row">
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
						      	<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/DaNang.jpg">
							      		</div>
							      		<p>ĐÀ NẴNG</p>
							      	</a>				      		
						      	</div>						      		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/QuyNhon.jpg">
							      		</div>
							      		<p>QUY NHƠN</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/NhaTrang.jpg">
							      		</div>
							      		<p>NHA TRANG</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/BinhDuong.jpg">
							      		</div>
							      		<p>BÌNH DƯƠNG</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      </div>
					    </div>
					    <div class="carousel-item">
					      <div class="row">
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
						      	<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/CanTho.jpg">
							      		</div>
							      		<p>CẦN THƠ</p>
							      	</a>				      		
						      	</div>						      		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/PhuQuoc.jpg">
							      		</div>
							      		<p>PHÚ QUỐC</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/HaiPhong.jpg">
							      		</div>
							      		<p>HẢI PHÒNG</p>
							      	</a>				      		
						      	</div>		
					      	</div>
					      	<div class="col-sm-3 col-lg-3 col-xs-3" style="padding: 0px 10px;">
					      		<div class="city-item">
							      	<a href="">
							      		<div class="city-item-img">
							      			<img class="city-img" alt="" src="/img/HoChiMinh.jpg">
							      		</div>
							      		<p>TP. HỒ CHÍ MINH</p>
							      	</a>				      		
						      	</div>			
					      	</div>
					      </div>
					    </div>					    
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#outstancity" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#outstancity" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>
				</div>
			</div>
			
			<!-- Outstanding advantages -->
			<div class=advantage-background>
				<div class="c-container">
					<h1>Ưu Điểm Của CarR</h1>
					<h4>Những tính năng giúp bạn dễ dàng hơn khi thuê xe trên CarR</h4>
					<div class="advan-container">
						<div class="advan-item">
							<div class="advan-item-img">
								<img alt="" src="/img/advan1.png">
							</div>
							<h5>Lái Xe An Toàn Cùng CarR</h5>
							<p>
								Chuyến đi trên Mioto được bảo vệ với Gói bảo hiểm thuê xe tự lái từ MIC & VNI.
								<br>
								Khách thuê sẽ chỉ bồi thường tối đa 2,000,000VNĐ trong trường hợp có sự cố ngoài ý muốn.
							</p>
						</div>
						<div class="advan-item">
							<div class="advan-item-img">
								<img alt="" src="/img/advan2.png">
							</div>
							<h5>An Tâm Đặt Xe</h5>
							<p>
								Không tính phí huỷ chuyến trong vòng 1h sau khi đặt cọc. Hoàn cọc và bồi thường 100% nếu chủ xe huỷ chuyến trong vòng 7 ngày trước chuyến đi.
							</p>
						</div>
						<div class="advan-item">
							<div class="advan-item-img">
								<img alt="" src="/img/advan3.png">
							</div>
							<h5>Thủ Tục Đơn Giản</h5>
							<p>
								Chỉ cần có CCCD gắn chip (Hoặc Passport) & Giấy phép lái xe là bạn đã đủ điều kiện thuê xe trên Mioto.
							</p>
						</div>
						<div class="advan-item">
							<div class="advan-item-img">
								<img alt="" src="/img/advan4.png">
							</div>
							<h5>Thanh Toán Dễ Dàng</h5>
							<p>
								Đa dạng hình thức thanh toán: ATM, thẻ Visa & Ví điện tử (Momo, VnPay, ZaloPay).
							</p>
						</div>
						<div class="advan-item">
							<div class="advan-item-img">
								<img alt="" src="/img/advan5.png">
							</div>
							<h5>Giao Xe Tận Nơi</h5>
							<p>
								Bạn có thể lựa chọn giao xe tận nhà/sân bay... Phí tiết kiệm chỉ từ 15k/km.
							</p>
						</div>
						<div class="advan-item">
							<div class="advan-item-img">
								<img alt="" src="/img/advan6.png">
							</div>
							<h5>Đa Dạng Dòng Xe</h5>
							<p>
								Hơn 100 dòng xe cho bạn tuỳ ý lựa chọn: Mini, Sedan, CUV, SUV, MPV, Bán tải.
							</p>
						</div>
					</div>
				</div>		
			</div>
						
			<!-- Service -->
			<div class="service-background">
				<div class="c-container">
					<h1>Dịch Vụ Của CarR</h1>								
					<div class="service-container">
						<div class="service-item-left">
							<div class="service-item-img">
								<img alt="" src="/img/service-bg-1.png">
								<div class="service-content">
									<h3>Xe đã sẵn sàng. <br> Bắt đầu hành trình ngay!</h3>
									<p>Tự tay cầm lái chiếc xe mà bạn yêu thích <br> cho hành trình thêm phấn khởi.</p>
									<a class="btn btn-success btn-service">Thuê xe tự lái</a>
								</div>
							</div>
						</div>
						<div class="service-item-right">
							<div class="service-item-img">
								<img alt="" src="/img/service-bg-2.png">
								<div class="service-content-right">
									<h3>Tài xế của bạn đã đến!</h3>
									<p>Chuyến đi thêm thú vị <br> cùng các bác tài 5* trên CarR.</p>
									<a class="btn btn-success btn-service">Thuê xe có tài xế</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- Tutorial -->
			<div class="tutor-background">
				<div class="c-container">
					<h1>Hướng Dẫn Thuê Xe</h1>
					<h4>Chỉ với 4 bước đơn giản để trải nghiệm thuê xe với CarR một cách nhanh chóng</h4>
					<div class="tutor-container">
						<div class="tutor-item">
							<div class="tutor-item-img">
								<img alt="" src="/img/tutor1.png">
							</div>
							<div class="tutor-item-content">
								<h5 class="content-text">01</h5>
								<h5>Đặt xe trên <br> web CarR</h5>
							</div>
						</div>
						<div class="tutor-item">
							<div class="tutor-item-img">
								<img alt="" src="/img/tutor2.png">
							</div>
							<div class="tutor-item-content">
								<h5 class="content-text">02</h5>
								<h5>Nhận Xe</h5>
							</div>
						</div>
						<div class="tutor-item">
							<div class="tutor-item-img">
								<img alt="" src="/img/tutor3.png">
							</div>
							<div class="tutor-item-content">
								<h5 class="content-text">03</h5>
								<h5>Bắt đầu <br> hành trình</h5>
							</div>
						</div>
						<div class="tutor-item">
							<div class="tutor-item-img">
								<img alt="" src="/img/tutor4.png">
							</div>
							<div class="tutor-item-content">
								<h5 class="content-text">04</h5>
								<h5>Trả xe&kết thúc <br> chuyến đi</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- Insurance -->
			<div class="insurance-background">
				<div class="c-container">
					<h1>Hành Trình Của Bạn Luôn Được Bảo Vệ</h1>
				</div>
				<div class="c-container">
					<div class="insurance-container">
						<div class="insurance-item">
							<img alt="" src="/img/mic.jpg">
						</div>
						<div class="insurance-item">
							<img alt="" src="/img/vni.jpg">
						</div>
						<div class="insurance-item">
							<img alt="" src="/img/pvi.jpg">
						</div>
						<div class="insurance-item">
							<img alt="" src="/img/global-care.jpg">
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
		
		<!-- Footer -->
		<%@include file="Layout/footer.jsp" %>
		
	</div>
</body>

</html>