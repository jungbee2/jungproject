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
	<h2>멤버추가</h2>
	<form action="write" method="post">
		<table class="table table-bordered" style="width: 500px;">
			<tr>
				<th width="150">이름</th>
				<td width="350">
					<input type="text" name="name" class="form-control" >
				</td>
			</tr>

			<tr>
				<th width="150">핸드폰번호</th>
				<td width="350">
					<input type="text" name="hp" class="form-control" >
				</td>
			</tr>

			<tr>
				<th width="150">주소</th>
				<td width="350">
					<input type="text" name="addr" class="form-control" >
				</td>
			</tr>

			<tr>
				<th width="150">가입날짜</th>
				<td width="350">
					<input type="date" name="gaipday" class="form-control" >
				</td>
			</tr>
		</table>
		
		<button type="submit" class="btn btn-success">추가</button>
		<button type="button" class="btn btn-primary" onclick="location.href='memberlist'">목록</button>
	</form>
</body>
</html>