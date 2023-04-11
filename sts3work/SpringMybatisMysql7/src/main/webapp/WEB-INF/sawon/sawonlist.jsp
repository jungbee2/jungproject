<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <!-- 추가할부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
<h2>사원리스트</h2>
<span class="alert alert-info" style="padding:10px; margin:15px;">
 <b>총 ${totalCount }명의 사원명단이 있습니다.</b>
</span>
<hr>

<div style="width: 800px; text-align:center;">

<c:if test="${search != null }">
<span class="alert alert-default" style="padding:10px; margin:15px;">
 <b>총 ${searchCount }명의 사원명단이 있습니다.</b>
</span>
</c:if>
<br>
<br>
<form action="list"class="form-inline">
	<select name="title" class="form-control" style="width:100px;">
	<option value="all"  ${title=='all'?"selected":"" }>전체</option>
	<option value="name" ${title=='name'?"selected":"" }>이름</option>
	<option value="buseo" ${title=='buseo'?"selected":"" }>부서명</option>
	<option value="driver" ${title=='driver'?"selected":"" }>운전면허</option>
	</select>
	
	<input type="text" name="search" class="form-control" placeholder="검색단어"
	style="width:300px;" value="${search }">
	
	<button type="submit" class="btn btn-primary btn-sm">검색</button>
</form>

</div>
<br>
	<table class="table table-striped" style="width: 700px;">
		<tr>
			<th>번호</th>
			<th>사원명</th>
			<th>부서명</th>
			<th>사진</th>
			<th>운전면허</th>
			<th>입사일</th>
			<th>편집</th>
		</tr>

		<c:forEach var="dto" items="${list }" varStatus="i">
			<tr>
				<td>${dto.num }</td>
				<td>${dto.name }</td>
				<td>${dto.buseo }</td>
				<td>
				
				<c:if test="${dto.photo!='no' }">
				<img alt="" src="../photo/${dto.photo }" style="width:40px; height:40px;" class="img-circle">
				</c:if>
				
				<c:if test="${dto.photo=='no' }">
				<b>NONE</b>
				</c:if>
				
				</td>
				<td>${dto.driver }</td>
				<td>
				<fmt:formatDate value="${dto.ipsaday }" pattern="yyyy년 MM월 dd일"/>
				
				</td>
				<td>
					<button type="button" class="btn btn-default btn-xs"
					 onclick="location.href='updateform?num=${dto.num}'">수정</button>
					<button type="button" class="btn btn-default btn-xs" 
					onclick="location.href='delete?num=${dto.num}'">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br><br>
<button type="button" class="btn btn-default" onclick="location.href='form'">글쓰기</button>
</body>
</html>