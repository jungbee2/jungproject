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
<div class="searcharea" style="">
<form action="list" class="form-inline">
	<div>
		<select class="form-control" style="width:150px;" name="searchcolumn">
			<option value="subject">제목</option>
			<option value="name">작성자</option>
			<option value="content">내용</option>
		</select>
		&nbsp;&nbsp;
		 <input type="text" name="searchword" class="form-control" style="width:200px;" placeholder="검색어를 입력하세요">
		 <button type="submit" class="btn btn-success">검색</button>
	</div>
</form>
</div>
<c:if test="${sessionScope.loginok!=null }">
	<button type="button" class="btn btn-default" style="width:100px; margin-left:900px;" onclick="location.href='form'">글쓰기</button>
</c:if>
<br><br>
<h5 style="font-weight:bold;">총 ${totalCount }개</h5>
<table class="table table-info" style="width:1000px;">
	<tr bgcolor="#ffc0cb">
		<th style="text-align:center;" width="60">번호</th>
		<th style="text-align:center;" width="460">제목</th>
		<th style="text-align:center;" width="160">작성자</th>
		<th style="text-align:center;" width="160">작성일</th>
		<th style="text-align:center;" width="80">조회</th>
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
					<td align="center">${no }</td>
					<c:set var="no" value="${no-1 }"/>
					
					<%-- 
					<td align="center">${a.num }</td> --%>
					
					
					<td><a href="content?num=${a.num }&currentPage=${currentPage}" style="color:#000;">
					${a.subject }
					
				<%-- 	<c:if test="${a.uploadfile!='no' }">
					<span class="glyphicon glyphicon-file" style="color:gray;"></span>
					</c:if>
					
					<c:if test="${a.acount>0 }">
					<span><a href="content?num=${a.num }&currentPage=${currentPage}"  style="color:red;">[${a.acount}]</a></span>
					</c:if>
					 --%>
					</a>	
					</td>
					<td align="center">${a.name }</td>
					<td align="center">${a.writeday }</td>
					<td align="center">${a.readcount }</td>
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