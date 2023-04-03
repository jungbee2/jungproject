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
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<h2>${title }</h2>
	<img alt="" src="${myimg1 }" width="200">
	
	<hr>
	<table style="width:200px;">
		<tr>
		<th>이름</th>
		<th>핸드폰</th>
		</tr>
		
		<tr>
		<td>안정빈</td>
		<td>010-1111-1111</td>
		</tr>
	</table>
	
</body>
</html>