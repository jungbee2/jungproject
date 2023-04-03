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
	<h2>사원폼</h2>
	<form action="sawonresult" method="post">
		사원명: <input type="text" name="sawon" size="6"><br> 
		부서명: <input type="text" name="buseo" size="10"><br> 
		급여: <input type="text" name="pay" size="10"><br> 
		나이: <input type="text" name="age" size="10"><br> 
		혈액형: <input type="text" name="blood" size="6"><br>
		<button type="submit" class="btn btn-default btn-sm">사원폼 전송</button>
	</form>

	<hr>
	<h2>사원폼</h2>
	<form action="sawonresult" method="post"  style="width:500px;">
		<table class="table table-bordered"  style="width:500px;">
			<tr>
				<th>사원명</th>
				<td><input type="text" name="sawon" size="6"></td>
			</tr>
				<tr>
				<th>부서명</th>
				<td><input type="text" name="buseo" size="10"></td>
			</tr>
				<tr>
				<th>급여</th>
				<td><input type="text" name="pay" size="10"></td>
			</tr>
				<tr>
				<th>나이</th>
				<td><input type="text" name="age" size="10"></td>
			</tr>
				<tr>
				<th>혈액형</th>
				<td><input type="text" name="blood" size="6"></td>
			</tr>
		</table>
			<button type="submit" class="btn btn-default btn-sm">사원폼 전송</button>
	</form>
</body>