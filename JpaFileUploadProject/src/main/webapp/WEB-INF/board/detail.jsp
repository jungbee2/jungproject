<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- �߰��Һκ� -->
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- �߰��Һκ� -->
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
<div style="margin: 50px 50px;">
	<h4>상세페이지</h4>
	<table class="table table-bordered" style="width: 700px;">
		<tr>
			<th width="160">제목</th>
			<td colspan="2">${dto.subject }</td>
		</tr>
		
		<tr>
			<th width="160">글쓴이</th>
			<td width="440">${dto.writer }</td>
			<th width="100">
			<fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd"/>
			</th>
		</tr>
		
		<tr>
			<td colspan="3" style="height:300px; padding:30px;">${dto.content }
			<br>
			<c:if test="${dto.photo!='no' }">
			<img src="/save/${dto.photo }" style="margin-top:10px;max-width:300px;">
			</c:if>
			</td>
		</tr>
	</table>
		<button type="button" class="btn btn-success" style="margin-left:532px;" onclick="location.href='updateform?num=${dto.num}'">수정</button>
		<button type="button" class="btn btn-danger" onclick="location.href='delete?num=${dto.num}'">삭제</button>
		<button type="button" class="btn btn-default" onclick="location.href='list'">목록</button>
</div>
</body>
</html>