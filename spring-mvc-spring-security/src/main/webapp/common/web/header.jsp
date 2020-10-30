<%@ page import="com.laptrinhjavaweb.util.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ include file="/common/taglib.jsp" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="<c:url value='/trang-chu'/>">Trang Chủ</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<%-- <li class="nav-item active"><a class="nav-link" href="<c:url value='/trang-chu'/>">Trang chủ
						<span class="sr-only">(current)</span>
				</a></li> --%>
				
				<li class="nav-item">
				<c:url var="CategoryURL1" value="/categorypage">
			<c:param name="categoryid" value="1" ></c:param>
			</c:url> 
          <a href="${CategoryURL1}" class="nav-link ">Thể Thao</a>
				</li>
				
				<li class="nav-item">
				<c:url var="CategoryURL2" value="/categorypage">
		<c:param name="categoryid" value="2"></c:param>
		</c:url> 
          <a href="${CategoryURL2}" class="nav-link">Chính Trị</a>
				</li>
				
				<li class="nav-item">
				<c:url var="CategoryURL3" value="/categorypage">
		<c:param name="categoryid" value="3"></c:param>
		</c:url> 
          <a href="${CategoryURL3}" class="nav-link ">Thời sự</a>     
				</li>
				
				<security:authorize access = "isAnonymous()">
					<li class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap'/>">Đăng nhập</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Đăng ký</a></li>
				</security:authorize>
				<security:authorize access = "isAuthenticated()">
					<li class="nav-item"><a class="nav-link" href="<c:url value='/quan-tri/trang-chu'/>">Wellcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value='/thoat'/>">Thoát</a></li>
				</security:authorize>
			</ul>
		</div>
	</div>
</nav>