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
<h2 class="alert alert-info">총 ${count }명의 회원이 있습니다.</h2>
<br>
<table class="table table-bordered" style="width: 1000px;">
	<caption>전체 회원명단</caption>
		<tr style="background-color: #fcfcf2">
			<th style="width: 50px;">번호</th>
			<th style="width: 150px;">이름</th>
			<th style="width: 100px;">아이디</th>
			<th style="width: 120px;">핸드폰</th>
			<th style="width: 350px;">주소</th>
			<th style="width: 200px;">이메일</th>
			<th style="width: 60px;"><input type="checkbox" id="allcheck">삭제</th>
		</tr>
		
		<c:forEach var="dto" items="${list }" varStatus="i">
			<tr >
				<td>${i.count }</td>
				<td><img src="../photo/${dto.photo }" alt="프로필" style="width:30px; height:30px; border-radius: 10px; margin:0 10px;">${dto.name}</td>
				<td>${dto.id }</td>
				<td>${dto.hp }</td>
				<td>${dto.addr }</td>
				<td>${dto.email }</td>
				<td><input type="checkbox" class="del" num=${dto.num }></td>
			</tr>
		</c:forEach>
	</table>
	
	<button type="button" class="btn btn-danger" 
	style="margin-left:920px;" id="btnmemberdel">DELETE</button>
</body>
</html>