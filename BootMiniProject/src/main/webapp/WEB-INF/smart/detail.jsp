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
<style type="text/css">
.day{
	color:gray;
	font-size:14px;
	float:right;
}

.box{
	width: 30px;
	height: 30px;
	border:1px solid gray;
	border-radius: 100px;
	float: right;
}
</style>
</head>
<body>
<fmt:setLocale value="ko_kr" scope="session"/>
	<div style="width: 600px; margin: 0 auto;">
		<b style="font-size: 20px;">${dto.sangname }</b> <span class="day">입고일
			:${dto.ipgoday }</span> <br>
		<br>
		<b style="font-size:18px;">
			<fmt:formatNumber value="${dto.price }" type="currency"/>
		</b>
		<b style="float:right; font-size:14px;">${dto.color}</b>
		<div class="box" style="background-color:${dto.color}"></div>
		<br><br>
		<hr>
		<div style="width:100%; padding:10px;">
		${dto.content }
		</div>
		<br><br>
		<hr>
		<div style="float:right;">
		<button type="button" class="btn btn-danger" onclick="location.href=''">삭제</button>
		<button type="button" class="btn btn-default" onclick="location.href='list?currentPage=${currentPage}'">목록</button>
		</div>
	</div>
</body>
</html>