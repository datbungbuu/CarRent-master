<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  
  
 
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/50eedbacb3.js" crossorigin="anonymous"></script>
<body>
<div class="container-fluid" style="max-width: 1600px; max-height: 800px">
<div class="row" style="height: 786px">
	<div class="col-lg-2" style="background: #289d8c">
		<%@include file ="/common/menuadmin.jsp"  %>		
	</div>	
	
	
	<div class="col-sm-10 pe-0 mt-5">
	<%-- <%@include file = "/common/nav.jsp" %> --%>
		
		
				<form:form action="/car/add" method="post" modelAttribute="carmodel">
									<div class="row mt-3 mb-3">
										<div class="col-sm-6">
											<h2 class="text-center">Hình ảnh xe</h2>
											<div class="mb-3">
											    <label class="form-label">Đầu xe</label>
											    <input type="file" class="form-control" name="imgDauXe" >
											 </div>	
											 <div class="mb-3">
											    <label class="form-label">Sườn trái</label>
											    <input type="file" class="form-control" name="imgSuonTXe" >
											 </div>	
											 <div class="mb-3">
											    <label class="form-label">Sườn phải</label>
											    <input type="file" class="form-control" name="imgSuonPXe" >
											 </div>	
											 <div class="mb-4">
											    <label class="form-label">Đuôi  xe</label>
											    <input type="file" class="form-control" name="imgDuoiXe" >
											 </div>	
											 
											 <div class="mt-3">
											<h3 class="text-center">Mô tả xe</h3>
											<form:textarea class="form-control" path="moTa" rows="7"/>
											<!-- <textarea class="form-control" name="description" rows="7" ></textarea> -->
										</div>
										</div>
										<div class="col-xl-6">
										<h2 class="text-center">Thông tin xe</h2>
											<div class="mb-3">
											    <label class="form-label">Biển Số</label>
											    <form:input type="text" class="form-control" path="bienSo"/>
											    <!-- <input type="text" class="form-control" name="id" > -->
											 </div>	
											 
											 <!-- hang xe -->
											 <div class="row">
											 	<div class="col-sm-6">
											 	 <div class="mb-3">
											    <label class="form-label">Hãng Xe</label>
													   <%--  <select class="form-select">
														  <option value="Ford">Ford</option>
														  <option value="VinFast">VinFast</option>
														  <option value="BMW">BMW</option>
														  <option value="MAZDA">MAZDA</option>
														  <option value="HYUNDAI">HYUNDAI</option>
														  <option value="MER">MER</option>
														</select> --%>
													<form:select path="hangXe"  class="form-select" >
														<form:option  value="Tất Cả"> <label>Tất cả</label> </form:option>
														<form:option value="Ford">Ford</form:option>
														<form:option value="VinFast">VinFast</form:option>
														<form:option value="BMW">BMW</form:option>
														<form:option value="MAZDA">MAZDA</form:option>
														<form:option value="HYUNDAI">HYUNDAI</form:option>
														
													</form:select>
													<%-- <form:errors path="hangXe" class="text-danger" /> --%>
													
											 </div>
											 	</div>
											 	<div class="col-sm-6">
												 	<div class="mb-3">
												    <label class="form-label">Tên Loại</label>
												    <!-- <input type="text" class="form-control" name="href" > -->
												    <form:input path="tenLoai" class="form-control"/>
												    <%-- <form:errors path="tenLoai" class="text-danger" /> --%>
												 	</div>
											 	</div>				
											 </div>										 											 											
			 
											 <div class="mb-3">
											    <label class="form-label">Giá Thuê</label>
											   <!--  <input type="text" class="form-control" name="poster" > -->
											    <form:input path="giaXe" class="form-control"/>
											 </div>
											 
											 <div class="row">
											 	<div class="col-sm-6">
											 		  <div class="mb-3 ">
											    <label class="form-label">Số Chỗ</label> <br>
											     <div class="form-check form-check-inline">
											   	 <form:radiobutton path="soCho" value="4 chô~" delimiter="" class="form-check-input checked"/>
											   	 
												  <!-- <input class="form-check-input" type="radio" name="socho"  value="4 chỗ"> -->
												  <label class="form-check-label" >4 chỗ</label>
												</div> 				
											<div class="form-check form-check-inline">
											  <form:radiobutton path="soCho" value="5 chô~" delimiter="" class="form-check-input checked"/>
											  <label class="form-check-label" >5 chỗ</label>
											</div>
											<div class="form-check form-check-inline">
											  <form:radiobutton path="soCho" value="7 chô~" delimiter="" class="form-check-input checked"/>
											  <label class="form-check-label" >7 chỗ</label>
											</div>
											 </div>
											 	</div>
											 	
											 	<div class="col-sm-6">
											 	
											 	 <div class="mb-3 ">
											    <label class="form-label">Truyền Động</label> <br>
											    <div class="form-check form-check-inline">
												   <form:radiobutton path="truyenDong" value="Số tự động" delimiter="" class="form-check-input"/>
												  <label class="form-check-label" >Số Tự Động</label>
												</div>
												<div class="form-check form-check-inline">
												  <form:radiobutton path="truyenDong" value="Số Sàn" delimiter="" class="form-check-input"/>
												  <label class="form-check-label" >Số Sàn</label>
												</div>
												 </div>
											 	</div>
											 </div>
											 							 
											 <!-- nhieu lieu -->
											 <div class="row">
											 	<div class="col-sm-6">
											 		<div class="mb-3">
											    <label class="form-label">Nhiên Liệu</label>
											    <%-- <select class="form-select">
												  <option value="Xăng">Xăng</option>
												  <option value="Điện">Điện</option>
												  <option value="Dầu">Dầu</option>
												</select> --%>
												<form:select path="nhienLieu" class="form-select">
														<form:option value="Xăng">Xăng</form:option>
														<form:option value="Điện">Điện</form:option>
														<form:option value="Dầu">Dầu</form:option>			
													</form:select>	
											 </div>
											 	</div>
											 	
											 	<div class="col-sm-6">
											 	<div class="mb-3">
											    <label class="form-label">Nhiên Liệu Tiêu Hao</label>
											   <!--  <input type="text" class="form-control" name="NLTieuHao" > -->
											   <form:input path="nlTieuHao"  class="form-control"/>
												 </div>
											 	</div>
											 </div>
											 
											  
											 
											  <div class="mb-3">
											    <label class="form-label">Địa Điểm</label>
											    <!-- <input type="text" class="form-control" name="poster" > -->
											    <form:input type="text" path="diaDiem" class="form-control" />
											 </div>
											 
											 
											 <div class="mb-3 ">
											   <label class="form-label">Trạng Thái Hoạt Động</label> <br>
											   	<div class="form-check">
												  <!-- <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate"> -->
												  <form:checkbox path="trangThai" class="form-check-input"/>
												  <label class="form-check-label" for="flexCheckIndeterminate">
												    Đang Cho Thuê
												  </label>
												</div>
											 </div>
										</div>
									</div>
									<div class="row">
										
									</div>
									<hr>
									<div class="row mb-3">
										<div class="d-grid gap-2 d-md-flex justify-content-md-end">
										  <button formaction="/car/create"  class="btn btn-outline-success me-md-2" type="submit">CREATE</button>
										  <button formaction="/car/update" class="btn btn-outline-warning" type="submit">UPDATE</button>
										  <button formaction="/car/delete" class="btn btn-outline-danger" type="submit">DELETE</button>
										  <!-- <button formaction="" class="btn btn-outline-primary" type="submit">RESET</button> -->
										</div>
									</div>
								</form:form>
		
	</div>
	
	
</div>
 </div>
</body>
</html>