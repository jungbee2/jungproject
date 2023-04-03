<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 추가할부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 추가할부분 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- 추가할부분 -->
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
<!-- 폼넘기는건 대부분 post -->
	<h2>get방식폼</h2>
	
	<form action="read1" method="get">
	이름: <input type="text" name="name" size="6"><br>
	나이: <input type="text" name="age" size="5"><br>
	<button type="submit" class="btn btn-default btn-sm">get방식 전송</button>
	</form>
	
	<hr size="5">
	
	<h2>post방식폼_dto로 읽기</h2>
	
	<form action="read2" method="post">
	상품: <input type="text" name="sang" size="10"><br>
	가격: <input type="text" name="price" size="10"><br>
	<button type="submit" class="btn btn-default btn-sm">post방식 전송</button>
	</form>
	
	
	<h2>post방식폼_map로 읽기</h2>
	
	<form action="read3" method="post">
	상품: <input type="text" name="sang" size="10"><br>
	가격: <input type="text" name="price" size="10"><br>
	<button type="submit" class="btn btn-default btn-sm">map방식 전송</button>
	</form>
</body>