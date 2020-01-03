<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</head>
<body>
  <div class="jumbotron text-center">
	<h1>포트폴리오 상세보기</h1>
  </div>
  <div class="container">
  <table class="table">
		<tr>
			<td>제목</td>
			<td>${portfolio.title}</td>
		</tr>
		<tr>
			<td>대표자</td>
			<td>${portfolio.leader}</td>
		</tr>
		<tr>
			<td>참여자</td>
			<td>총 ${portfolio.memberCount}명 : ${portfolio.member}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${portfolio.content}</td>
		</tr>		
		<tr>
			<td>시작일</td>
			<td>${portfolio.startDate}</td>
		</tr>		
		<tr>
			<td>종료일</td>
			<td>${portfolio.endDate}</td>
		</tr>				
 	</table>
 	
 	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	  <ol class="carousel-indicators">
	  	<c:forEach items="${portfolio.dataList}" var="file" varStatus="status">
	  		<c:choose>
	   			<c:when test="${status.first}">
	  			   <li data-target="#carouselExampleIndicators" data-slide-to="${status.count}" class="active"></li>
	  			</c:when>
	  			<c:otherwise>
				    <li data-target="#carouselExampleIndicators" data-slide-to="${status.count}"></li>
	  			</c:otherwise>
	  		</c:choose>
	    </c:forEach>
	  </ol>
	  <div class="carousel-inner">
	   	<c:forEach items="${portfolio.dataList}" var="file" varStatus="status">
	   		<c:choose>
	   			<c:when test="${status.first}">
				    <div class="carousel-item active">
				 		<img src="uploadFileSave/${file.realFileName}" class="d-block w-100"/>
				    </div>
	   			</c:when>
	   			<c:otherwise>
				    <div class="carousel-item">
				 		<img src="uploadFileSave/${file.realFileName}" class="d-block w-100"/>
				    </div>
	   			</c:otherwise>
	   		</c:choose>
 		</c:forEach> 	
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

	<div class="container mt-3 text-center">
		<a href="portfolio_list.do"><div class="btn btn-primary">목록</div></a>
	</div>

 	</div>
</body>
</html>







