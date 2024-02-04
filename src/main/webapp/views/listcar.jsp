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
	
	
	<div class="col-sm-10 pe-0">
	<%@include file = "/common/nav.jsp" %>
		
		
			<div class="row justify-content-center m-0" >
							<h1 class="text-center mt-3 mb-3" style="color: #289d8c">CAR LIST</h1>
								
								<!-- drop sort -->
								<div class="dropdown mb-2">
							  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
							    Sắp Xếp
							  </button>
							  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							    <li><a class="dropdown-item" href="/car/sort?field=giaXe">Theo Giá</a></li>
							    <li><a class="dropdown-item" href="/car/sort?field=trangThai">Theo Trạng Thái</a></li>
							    <li><a class="dropdown-item" href="/car/sort?field=hangXe">Theo Hãng</a></li>
							  </ul>
							</div>
								
							<div style="height:  600px; overflow-y: scroll;">
								<table class="table table-bordered text-center">
									<thead>
									    <tr>
									      <th scope="col">Biển Số </th>
									      <th scope="col">Hãng xe</th>
									      <th scope="col">Tên Loại</th>
									      <th scope="col">Giá thuê</th>
									      <th scope="col">Số chỗ</th>
									      <th scope="col">Truyền động</th>
									      <th scope="col">Nhiên Liệu</th>
									      <th scope="col">Nhiêu liệu tiêu hao</th>
									      <th scope="col">Địa điểm</th>
									      <th scope="col">Trạng thái hoạt đọng</th>
									      <th scope="col"><i class="fa-solid fa-gear"></i></th>
									    </tr>
									</thead>
									<tbody>
									<c:forEach items="${lscar}" var="item">
									    <tr>
									      <td>${item.bienSo}</td>
										  <td>${item.hangXe}</td>
										  <td>${item.tenLoai}</td>
										  <td>${item.giaXe}</td>
										  <td>${item.soCho}</td>
										  <td>${item.truyenDong}</td>
										  <td>${item.nhienLieu} </td>
										  <td>${item.nlTieuHao}lit/100km</td>
										  <td>${item.diaDiem}</td>
										  <td>${item.trangThai? 'Đang cho thuê' : 'Còn Trống' }</td>
									      <td> <a href="/car/edit/${item.bienSo }" class="text-decoration-none"><i class="fa-solid fa-pencil"></i></a> </td>
									    </tr>
									</c:forEach>		  
									</tbody>
								</table>
								
								<%-- <!-- phân trang -->
							<nav aria-label="Page navigation example">
							  <ul class="pagination">
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-arrow-left"></i></a></li>
							    <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-arrow-right"></i></a></li>
							    
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							  </ul>
							</nav>	 --%>
								
							</div>	
							
														
						</div>
		
	</div>
	
	
</div>
 </div>
	


</body>
</html>