<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
        <h1 class="my-4">Thể Thao</h1>
        <div class="list-group">
 
           <c:url var="CategoryURL1" value="/categorypage">
		<c:param name="categoryid" value="1" ></c:param>
		</c:url> 
          <a href="${CategoryURL1}" class="list-group-item ">Thể Thao</a>
          
          <c:url var="CategoryURL2" value="/categorypage">
		<c:param name="categoryid" value="2"></c:param>
		</c:url> 
          <a href="${CategoryURL2}" class="list-group-item ">Chính Trị</a>

 		<c:url var="CategoryURL3" value="/categorypage">
		<c:param name="categoryid" value="3"></c:param>
		</c:url> 
          <a href="${CategoryURL3}" class="list-group-item ">Thời sự</a>          
          
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div class="card mt-4">
          <img class="card-img-top img-fluid" src="../image/900X400.jpg" alt="">
          <div class="card-body">
            <h3 class="card-title">${model.title}</h3>
            <h4>${model.shortDescription}</h4>
            <p class="card-text"><p></p>
          </div>
        </div>
        <!-- /.card -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            Nội dung
          </div>
          <div class="card-body">
         <p> ${model.content}</p>
       <%--  <p><c:out value="${model.content}"/></p> --%>
             
             
            <small class="text-muted">${model.createdBy}</small>
            <hr>
            <a href="<c:url value="/trang-chu"/>" class="btn btn-success">Leave a News</a>
          </div>
        </div>
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->
</body>
</html>