<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="/common/taglib.jsp"%>
<c:url var="newBV" value="/ctbv"/>
<html>

<head>

<meta charset="UTF-8">
<title>Trang chủ</title>

</head>

<body>
	<!-- Page Content -->
  <div class="container">

    <!-- Heading Row -->
    <c:forEach var="item1" items="${model1.listResult}">
    <div class="row align-items-center my-5">
   
      <div class="col-lg-7">
      <iframe src="${item1.thumbnail}" width="640" height="480"></iframe> 
       <!-- <iframe src="https://drive.google.com/file/d/1yOP4PksPNKfOaYgRJXZdDVg6hYW6IFM2/preview" width="640" height="480"></iframe> -->
      </div>
      <!-- /.col-lg-8 -->
      <div class="col-lg-5">
      
        <h1 class="font-weight-light">${item1.title}</h1>
        <p>${item1.shortDescription}</p>
        <c:url var="NewURL" value="/ctbv">
			<c:param name="id" value="${item1.id}"></c:param>
		</c:url>	
        <a class="btn btn-primary" href="${NewURL}">More Info</a>
       
      </div>
       
      <!-- /.col-md-4 -->
    </div>
    <!-- /.row -->
	</c:forEach>
    <!-- Call to Action Well -->
    <div class="card text-white bg-secondary my-5 py-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">This call to action card is a great place to showcase some important information or display a clever tagline!</p>
      </div>
    </div>

    <!-- Content Row -->
              <p>Thể thao</p>  
    <div class="row">
     <c:forEach var="thethao" items="${TheThao.listResult}"> 
      <div class="col-md-4 mb-5">
    
        <div class="card h-100">
 
          <div class="card-body">
            <h2 class="card-title">${thethao.title}</h2>
            <p class="card-text">${thetao.shortDescription}</p>
          	 <iframe src="${thethao.thumbnail}" width="300" height="200"></iframe> 
          </div>
           
          <div class="card-footer">
          <c:url var="NewURL" value="/ctbv">
			<c:param name="id" value="${thethao.id}"></c:param>
		</c:url>	
            <a href="${NewURL}" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
         
      </div>
       </c:forEach> 
    </div>
   
    <!-- /.row -->
    
    <!-- Content Row -->
              <p>Thời Sự</p>  
    <div class="row">
     <c:forEach var="thoisu" items="${ThoiSu.listResult}"> 
      <div class="col-md-4 mb-5">
    
        <div class="card h-100">
 
          <div class="card-body">
            <h2 class="card-title">${thoisu.title}</h2>
            <p class="card-text">${thoisu.shortDescription}</p>
          	 <iframe src="${thoisu.thumbnail}" width="300" height="200"></iframe> 
          </div>
           
          <div class="card-footer">
          <c:url var="NewURL" value="/ctbv">
			<c:param name="id" value="${thoisu.id}"></c:param>
		</c:url>	
            <a href="${NewURL}" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
         
      </div>
       </c:forEach> 
    </div>
   
    <!-- /.row -->

 <!-- Content Row -->
              <p>Chính trị</p>  
    <div class="row">
     <c:forEach var="chinhtri" items="${ChinhTri.listResult}"> 
      <div class="col-md-4 mb-5">
    
        <div class="card h-100">
 
          <div class="card-body">
            <h2 class="card-title">${chinhtri.title}</h2>
            <p class="card-text">${chinhtri.shortDescription}</p>
          	 <iframe src="${chinhtri.thumbnail}" width="300" height="200"></iframe> 
          </div>
           
          <div class="card-footer">
          <c:url var="NewURL" value="/ctbv">
			<c:param name="id" value="${chinhtri.id}"></c:param>
		</c:url>	
            <a href="${NewURL}" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
         
      </div>
       </c:forEach> 
    </div>
   
    <!-- /.row -->


  </div>
</body>

</html>