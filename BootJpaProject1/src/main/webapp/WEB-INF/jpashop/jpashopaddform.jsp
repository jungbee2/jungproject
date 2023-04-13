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
	<caption><b>상품 정보입력</b></caption>
		<tr>
			<th width="100">상품명</th>
			<td>
				<input type="text" name="sangpum" class="form-control" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100">가격</th>
			<td>
				<input type="text" name="price" class="form-control" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100">사진</th>
				<td>
				<select name="photo" class="form-control">
						<option value="메인집게핀3.jpg" selected>집게핀</option>
						<option value="팔찌4-2.jpg">팔찌</option>
						<option value="photo1.jpg">반지</option>
				</select>
				</td>
			</tr>
		
		<tr>
			<th width="100">입고일</th>
			<td>
				<input type="date" name="ipgoday" class="form-control" value="2023-04-10" required="required">
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