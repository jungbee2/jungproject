<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
<h3 class="alert alert-info"> 총 ${totalCount }개의 상품이 등록 되었습니다.</h3>


<button type="button" class="btn btn-info" onclick="location.href='form'">상품추가</button>


<table class="table table-info" style="width:1000px;">
<caption><b>상품목록</b></caption>
	<tr bgcolor="#ffc0cb">
		<th style="text-align:center;" width="80">번호</th>
		<th style="text-align:center;" width="300">상품명</th>
		<th style="text-align:center;" width="200">색상</th>
		<th style="text-align:center;" width="120">가격</th>
		<th style="text-align:center;" width="160">입고일</th>
	</tr>
	
	<c:if test="${totalCount==0 }">
		<tr>
			<td colspan="5" align="center">
				<h3><b>등록된 게시물이 없습니다.</b></h3>
			</td>
		</tr>
	</c:if>
 	
	<c:if test="${totalCount>0 }">
				<c:forEach var="a" items="${list }">
				<tr>
					<td>${no }</td>
					<c:set var="no" value="${no-1 }"/>
					<td align="center"><a href="detail?num=${a.num }&currentPage=${currentPage}">${a.sangname }</a></td>
					<td align="center"><div style="width:20px; height:20px; border:2px solid lightgray; border-radius: 100px; background-color:${a.color };"></div></td>
					<td align="center">${a.price }</td>
					<td align="center">${a.ipgoday }</td>
				</tr>

			</c:forEach>
			</c:if> 
			
</table>


		<!-- 페이징 -->
		<c:if test="${totalCount>0}">
			<div style="width: 800px; text-align: center;">
				<ul class="pagination">
					<!-- 이전 -->
					<c:if test="${startPage>1 }">
						<li>
						<a href="list?currentPage=${startPage-1}">이전</a>
						</li>
					</c:if>

					<c:forEach var="pp" begin="${startPage }" end="${endPage }">
						<c:if test="${currentPage==pp }">
							<li class="active"><a href="list?currentPage=${pp}">${pp}</a>
							</li>
						</c:if>

						<c:if test="${currentPage!=pp }">
							<li><a href="list?currentPage=${pp}">${pp}</a></li>
						</c:if>
					</c:forEach>
					
					<!--다음 -->
					<c:if test="${endPage<totalPage }">
						<li>
						<a href="list?currentPage=${endPage+1}">다음</a>
						</li>
					</c:if>
				</ul>
			</div>
		</c:if>
</body>
</html>