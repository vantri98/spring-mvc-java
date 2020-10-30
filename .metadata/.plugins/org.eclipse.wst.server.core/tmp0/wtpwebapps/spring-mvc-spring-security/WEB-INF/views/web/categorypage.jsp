<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
    <c:url var="newBV" value="/ctbv"/>
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

        <h1 class="my-4">Thể Loại</h1>
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

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="http://placehold.it/900x350" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        <div class="row">
	<c:forEach var="item" items="${model.listResult}">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
            	
              <iframe src="${item.thumbnail}" width="200" height="200"></iframe> 
              <div class="card-body">
                <h4 class="card-title">
                 <c:url var="NewURL" value="/ctbv">
					<c:param name="id" value="${item.id}"></c:param>
				</c:url>
                  <a href="${NewURL}">${item.title}</a>
                </h4>
                <p class="card-text">${item.shortDescription}</p>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>
	</c:forEach> 
        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
  <script>

  </script>
</body>
</html>