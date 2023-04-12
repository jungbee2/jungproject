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
<h1>폼 데이터 각각 읽기</h1>
<form action="read1" method="post">
	<table class="table table-bordered" style="width:300px;">
		<tr>
			<th width="100">이름</th>
			<td>
				<input type="text" name="name" class="form-control" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100">자바점수</th>
			<td>
				<input type="text" name="java" class="form-control" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100">스프링점수</th>
			<td>
				<input type="text" name="spring" class="form-control" required="required">
			</td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-success">서버에 전송</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>