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
<script type="text/javascript">
	$(function() {
		$("#portfolioList :button").click(function() {
			location.href = "portfolio_remove.do?no="+$(this).attr("data-no");
		});
	});  
  
</script>
</head>
<body>
  <div class="jumbotron text-center">
	<h1>포트폴리오 리스트</h1>
  </div>
  <div class="container text-center">
	<form action="portfolio_search.do" method="post">
		<input type="text" name="title" placeholder="제목을 입력하세요"
			value="${param.title}"> 
		<input type="submit"  class="btn btn-success" value="검색">
	</form>
	
	<table class="table table-striped mt-2">
		<thead class="thead-dark">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>시작일</th>
				<th>종료일</th>
				<th>자료수</th>				
				<th>대표자</th>
				<th>참여자수</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="portfolioList">
		<c:forEach items="${list}" var="portfolio">
					<tr>
						<td>${portfolio.no}</td>
						<td><a href="portfolio_detail.do?no=${portfolio.no}">${portfolio.title}</a> </td>
						<td>${portfolio.startDate}</td>
						<td>${portfolio.endDate}</td>
						<td>${portfolio.dataCount}</td>				
						<td>${portfolio.leader}</td>
						<td>${portfolio.memberCount}</td>
						<td><input type="button" value="삭제" class="btn btn-warning" data-no="${portfolio.no}"/></td>
					</tr>	
		</c:forEach>		
		</tbody>
	</table>
  </div>
  <div class="container mt-3 text-center">
		<a href="portfolio_input.html"><div class="btn btn-primary">등록</div></a>
  </div>
</body>
</html>











