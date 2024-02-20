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
	
	
	<div class="col-sm-10 pe-0" style="background-image: url('/img/bgimg2.jpg'); background-size: cover; background-repeat: no-repeat; background-position: center center;"  >
	<%-- <%@include file = "/common/nav.jsp" %> --%>
		
		
			<div class="row justify-content-between mt-5 ms-2 me-2"  >
			
			
					<div class="card text-center" style="width: 20rem;">
				  <img src="/img/bwmcarhome.jpg" class="card-img-top mt-2 rounded " alt="...">
				  <div class="card-body">
				    <h3 class="card-title mb-5">Car Rent</h3>
				    <p class="card-text"></p>
				    <div class="d-flex justify-content-around">
				   
				    <a href="/car/add" class="btn btn-warning"> Add To Car </a>
				    
				   	 
				    <a href="/car/list" class="btn btn-warning"> List Car </a>
				
				    
				    </div>
				    
				  </div>
				</div>		
				
				<div class="card text-center" style="width: 20rem;">
				  <img src="/img/bwmcarhome.jpg" class="card-img-top mt-2 rounded " alt="...">
				  <div class="card-body">
				    <h3 class="card-title mb-5">Car Rent</h3>
				    <p class="card-text"></p>
				    <div class="d-flex justify-content-around">
				   
				    <a href="/car/add" class="btn btn-warning"> Add To Car </a>
				    
				   	 
				    <a href="/car/list" class="btn btn-warning"> List Car </a>
				
				    
				    </div>
				    
				  </div>
				</div>
				
				<div class="card text-center" style="width: 20rem;">
				  <img src="/img/bwmcarhome.jpg" class="card-img-top mt-2 rounded " alt="...">
				  <div class="card-body">
				    <h3 class="card-title mb-5">Car Rent</h3>
				    <p class="card-text"></p>
				    <div class="d-flex justify-content-around">
				   
				    <a href="/car/add" class="btn btn-warning"> Add To Car </a>
				    
				   	 
				    <a href="/car/list" class="btn btn-warning"> List Car </a>
				
				    
				    </div>
				    
				  </div>
				</div>
				
				
					
				
			</div>
		
	</div>
	
	
</div>
 </div>
	


</body>
</html>