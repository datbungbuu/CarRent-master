<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lý Xe</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/460094d4fd.js"
	crossorigin="anonymous"></script>
<link href="/css/qlyxestyle.css" rel="stylesheet">
</head>
<body>
	<div class="carrent-layout">
		<!-- Header -->
		<div class="c-header">
			<div class="c-container">
				<a class="header-logo"> <img alt="CarRent" src="/img/anh nhom size 32.png">
				</a>
				<div class="header-menu">
					<a href="#">Về CarR</a> <a href="#">Trở Thành Đối Tác</a> <a
						href="#">Chuyến Của Tôi</a>
					<div class="vertical-line"></div>
					<div>
						<div class="notification">
							<i class="fa-regular fa-bell" style="font-size: 1.3rem;"></i>
						</div>
					</div>
					<div class="profile">
						<a class="profile" href="#">
							<div class="profile-avatar">
								<img alt="" src="/img/dat.jpg">
							</div> <span class=name>Thành Đạt</span>
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="c-container">
			<div class="header-menu">
				<div>
					<div class="dropdown">
						<button class="btn dropdown-toggle btn-outline-dark rounded-pill"
							type="button" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="fa-solid fa-car-side"></i> Loại Xe
						</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">4 chỗ(MINI)</a></li>
							<li><a class="dropdown-item" href="#">4 chỗ(Sedan)</a></li>
							<li><a class="dropdown-item" href="#">5 chỗ(CUV Gầm Cao)</a></li>
							<li><a class="dropdown-item" href="#">7 chỗ(SUV Gầm Cao)</a></li>
							<li><a class="dropdown-item" href="#">7 chỗ(MPV Gầm
									Thấp)</a></li>
							<li><a class="dropdown-item" href="#">Bán Tải</a></li>
							<li><a class="dropdown-item" href="#">MiNiVan</a></li>
						</ul>
					</div>
				</div>
				<div>
					<div class="dropdown">
						<button class="btn dropdown-toggle btn-outline-dark rounded-pill"
							type="button" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="fa-solid fa-globe"></i> Hãng Xe
						</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">4 chỗ(MINI)</a></li>
							<li><a class="dropdown-item" href="#">4 chỗ(Sedan)</a></li>
							<li><a class="dropdown-item" href="#">5 chỗ(CUV Gầm Cao)</a></li>
							<li><a class="dropdown-item" href="#">7 chỗ(SUV Gầm Cao)</a></li>
							<li><a class="dropdown-item" href="#">7 chỗ(MPV Gầm
									Thấp)</a></li>
							<li><a class="dropdown-item" href="#">Bán Tải</a></li>
							<li><a class="dropdown-item" href="#">MiNiVan</a></li>
						</ul>
					</div>
				</div>
				<div style="padding: 12px 0px;">
					<button class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false">
						<i class="fa-solid fa-bolt-lightning"></i> Đặt Xe Nhanh
					</button>
				</div>
				<div>
					<button class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false">
						<i class="fa-brands fa-creative-commons-nc"></i> Miễn Thế Chấp
					</button>
				</div>
				<div>
					<button class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false">
						<i class="fa-solid fa-check"></i> Xe Giảm Giá
					</button>
				</div>
				<div>
					<button class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false">
						<i class="fa-solid fa-map"></i> Giao Xe Nhanh
					</button>
				</div>
				<div>
					<button class="btn btn-outline-dark rounded-pill" type="button"
						aria-expanded="false">
						<i class="fa-solid fa-car-on"></i>Xe Điện
					</button>
				</div>
				<div>
					<button class="btn btn-outline-dark rounded-pill" type="button"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling"
						aria-controls="offcanvasScrolling">
						<i class="fa-solid fa-gears"></i>Truyền Động
					</button>

					<div class="offcanvas offcanvas-start" data-bs-scroll="true"
						data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling"
						aria-labelledby="offcanvasScrollingLabel">
						<div class="offcanvas-header">
							<button class="btn btn-outline-dark" class="btn-close"
								data-bs-dismiss="offcanvas" aria-label="Close"></button>
						</div>
						<div class="offcanvas-body">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> Tất
									Cả </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault2" checked>
								<label class="form-check-label" for="flexRadioDefault2">
									Số Tự Động </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault3" checked>
								<label class="form-check-label" for="flexRadioDefault3">
									Số Sàn </label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="c-container">
			<div class="row">
				<div class="col-lg-4" style="padding: 12px 12px;">
					<a class="car-item" href="#">
						<div class="car-item-box">
							<div class="car-item-img">
								<div class="car-img">
									<img alt="" src="/img/xe1.jpg">
								</div>
								<span class="car-note"> <span class="c-note"> Đặt
										Xe Nhanh <i class="fa-solid fa-bolt" style="color: yellow;"></i>
								</span> <span class="c-note"> Miễn Thế Chấp <i
										class="fa-solid fa-lock-open" style="color: green;"></i>
								</span>
								</span>
								<div class="car-avatar">
									<img alt="" src="/img/dat.jpg">
								</div>
								<span class="car-discount">Giảm 10%</span>
							</div>

							<div class="car-item-detail">
								<div class="c-detail-type">
									<span class="type-item">Số tự động</span> <span
										class="type-item-1">Giao Xe Tận Nơi</span>
								</div>
								<div class="c-detail-name">
									<p>SUZUKI XL7 2021</p>
									<i class="fa-solid fa-shield-halved" style="color: green"></i>
								</div>
								<div class="c-detail-address">
									<i class="fa-solid fa-location-dot" style="color: red"></i>
									<p>Quận 1, Hồ Chí Minh</p>
								</div>
								<div class="c-detail-line"></div>
								<div class="c-detail-price">
									<div class="price-info">
										<i class="fa-solid fa-person-walking-luggage"></i> <span
											class="num-trip">36 Chuyến</span>
									</div>
									<div class="price-warp">
										<span class="price-origin">930K</span> <span
											class="price-special">850K</span>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4" style="padding: 12px 12px;">
					<a class="car-item" href="#">
						<div class="car-item-box">
							<div class="car-item-img">
								<div class="car-img">
									<img alt="" src="/img/xe2.jpg">
								</div>
								<span class="car-note"> <span class="c-note"> Đặt
										Xe Nhanh <i class="fa-solid fa-bolt" style="color: yellow;"></i>
								</span> <span class="c-note"> Miễn Thế Chấp <i
										class="fa-solid fa-lock-open" style="color: green;"></i>
								</span>
								</span>
								<div class="car-avatar">
									<img alt="" src="/img/dat.jpg">
								</div>
								<span class="car-discount">Giảm 10%</span>
							</div>

							<div class="car-item-detail">
								<div class="c-detail-type">
									<span class="type-item">Số tự động</span> <span
										class="type-item-1">Giao Xe Tận Nơi</span>
								</div>
								<div class="c-detail-name">
									<p>MITSUBISHI XPANDER 2022</p>
									<i class="fa-solid fa-shield-halved" style="color: green"></i>
								</div>
								<div class="c-detail-address">
									<i class="fa-solid fa-location-dot" style="color: red"></i>
									<p>Quận 4, Hồ Chí Minh</p>
								</div>
								<div class="c-detail-line"></div>
								<div class="c-detail-price">
									<div class="price-info">
										<i class="fa-solid fa-person-walking-luggage"></i> <span
											class="num-trip">14 Chuyến</span>
									</div>
									<div class="price-warp">
										<span class="price-origin">1147K</span> <span
											class="price-special">1088K</span>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4" style="padding: 12px 12px;">
					<a class="car-item" href="#">
						<div class="car-item-box">
							<div class="car-item-img">
								<div class="car-img">
									<img alt="" src="/img/xe3.jpg">
								</div>
								<span class="car-note"> <span class="c-note"> Đặt
										Xe Nhanh <i class="fa-solid fa-bolt" style="color: yellow;"></i>
								</span> <span class="c-note"> Miễn Thế Chấp <i
										class="fa-solid fa-lock-open" style="color: green;"></i>
								</span>
								</span>
								<div class="car-avatar">
									<img alt="" src="/img/dat.jpg">
								</div>
								<span class="car-discount">Giảm 22%</span>
							</div>

							<div class="car-item-detail">
								<div class="c-detail-type">
									<span class="type-item">Số tự động</span> <span
										class="type-item-1">Giao Xe Tận Nơi</span>
								</div>
								<div class="c-detail-name">
									<p>HYUNDAI STARGAZER 2022</p>
									<i class="fa-solid fa-shield-halved" style="color: green"></i>
								</div>
								<div class="c-detail-address">
									<i class="fa-solid fa-location-dot" style="color: red"></i>
									<p>Quận 1, Hồ Chí Minh</p>
								</div>
								<div class="c-detail-line"></div>
								<div class="c-detail-price">
									<div class="price-info">
										<i class="fa-solid fa-person-walking-luggage"></i> <span
											class="num-trip">1 Chuyến</span>
									</div>
									<div class="price-warp">
										<span class="price-origin">936K</span> <span
											class="price-special">756K</span>
									</div>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
</body>
</html>