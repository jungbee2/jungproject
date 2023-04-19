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
<style>
th td {
	text-align: center;
}

a {
	cursor: pointer;
	color: #000;
}

a:hover {
	text-decoration: none;
	font-weight: bold;
	color: #000;
}
</style>
</head>
<body>
<div style="margin: 50px 50px;">
	<button type="button" class="btn btn-default" onclick="location.href='writeform'">글쓰기</button>
	<br>
	<h2 class="alert alert-info">총 ${count }개의 게시물이 있습니다.</h2>
	
	<table class="table table-bordered" style="width:900px;">
	<tr>
		<th width="100">NO</th>
		<th width="100">글쓴이</th>
		<th width="550">제목</th>
		<th width="150">작성일</th>
	</tr>
	<c:forEach  var="dto" items="${list }" varStatus="i">
	<tr>
		<td>${dto.num }</td>
		<td>${dto.writer }</td>
		<td><a onclick="location.href='detail?num=${dto.num}'">${dto.subject }</a>
		<c:if test="${dto.photo!='no' }">
		<img src="/save/${dto.photo }" style="width:30px; height:20px; margin-left:20px;">
		</c:if>
		<c:if test="${dto.photo=='no' }"></c:if>
		</td>
		<td><fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH:mm"/></td>
	</tr>
	</c:forEach>
	</table>
</div>
</body>
</html>