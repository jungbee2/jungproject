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
<h2>DTO로 폼 읽어오기</h2>
<form action="process2" method="post">
	아이디 : <input type="text" name="id"><br>
	전화번호 : <select name="hp1">
		<option value="010">010
		<option value="011">011
		<option value="031">031
		<option value="051">051
		<option value="02">02
	</select>
	&ensp;-&ensp;
	<input type="text" name="hp2">
	&ensp;-&ensp;
	<input type="text" name="hp3"><br>
	대표사진: <select name="img">
		<option value="01">1
		<option value="02">2
		<option value="03">3
		<option value="04">4
		<option value="05">5
	</select><br>
	자바점수 : <input type="text" name="java"><br>
	스프링점수 : <input type="text" name="spring"><br>
	
	<button type="submit" class="btn btn-default btn-sm">저장</button>
</form>
</body>
</html>