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
<!-- insert시 method ="post" -->
<form action="update" method="post">

<!-- hidden  -->
<input type="hidden" name="num" value="${dto.num }">

		<table class="table table-bordered" style="width: 400px;">
			<caption style="font-size:26px;">차정보 수정</caption>
			<tr>
				<th bgcolor="lightblue" width="100">차종</th>
				<td>
					<input type="text" name="carname" size="10" value="${dto.carname }" required="required">
				</td>
			</tr>
			
			<tr>
				<th bgcolor="lightblue" width="100">자동차 가격</th>
				<td>
					<input type="text" name="carprice" size="10" value="${dto.carprice }" required="required">
				</td>
			</tr>
			
			<tr>
				<th bgcolor="lightblue" width="100">색상</th>
				<td>
					<input type="color" name="carcolor" size="10" value="${dto.carcolor }" required="required" value="#ffffcc">
				</td>
			</tr>
			
			<tr>
				<th bgcolor="lightblue" width="100">구입일</th>
				<td>
					<input type="date" name="carguip" size="10" value="${dto.carguip }" required="required">
				</td>
			</tr>
			
		</table>
		<button type="submit" class="btn btn-default btn-sm">DB수정</button>
		<button type="button" class="btn btn-default btn-sm" onclick="location.href='list'">목록</button>
	</form>
</body>
</html>