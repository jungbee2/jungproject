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
<form action="insert" method="post">
	<table class="table table-bordered" style="width:400px;">
	<caption><b>자동차 정보입력</b></caption>
		<tr>
			<th width="100">자동차명</th>
			<td>
				<input type="text" name="carname" class="form-control" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100">단가</th>
			<td>
				<input type="text" name="carprice" class="form-control" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100">색상</th>
			<td>
				<input type="color" name="carcolor" class="form-control" value="#ffccff" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100">구입일</th>
			<td>
				<input type="date" name="carguip" class="form-control" value="2023-04-10" required="required">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-success">서버에 전송</button>
				<button type="button" class="btn btn-default" onclick="location.href='list'">목록</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>