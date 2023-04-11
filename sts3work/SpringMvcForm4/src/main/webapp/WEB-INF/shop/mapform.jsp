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
<form action="process3" method="post" style="width:300px;">
	
		<table class="table table-bordered"  style="width:300px;">
		<caption><b>시험점수입력</b></caption>
			<tr>
				<th style="width:100px;">학생명</th>
				<td><input type="text" name="name" class="form-control input-sm"></td>
			</tr>
			<tr>
				<th style="width:100px;">자바점수</th>
				<td><input type="text" name="java" class="form-control input-sm"></td>
			</tr>
			<tr>
				<th style="width:100px;">오라클점수</th>
				<td><input type="text" name="oracle" class="form-control input-sm"></td>
			</tr>
			<tr>
				<th style="width:100px;">스프링점수</th>
				<td><input type="text" name="spring" class="form-control input-sm"></td>
			</tr>
			
		</table>
			<button type="submit" class="btn btn-default btn-sm">전송</button>
	</form>
</body>
</html>