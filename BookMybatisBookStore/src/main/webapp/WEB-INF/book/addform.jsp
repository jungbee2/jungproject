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
<form action="insert" method="post" enctype="multipart/form-data">
<table class="table table-bordered" style="width: 500px;">
	<caption><b>책정보 입력</b></caption>

			<tr>
				<th bgcolor="#ddd">책</th>
				<td><input type="text" name="bookname" class="form-control"
					style="width: 200px;" required="required"></td>
			</tr>

			<tr>
				<th bgcolor="#ddd">저자</th>
				<td><input type="text" name="bookwriter" class="form-control"
					style="width: 200px;" required="required"></td>
			</tr>


			<tr>
				<th bgcolor="#ddd">출판사</th>
				<td><input type="text" name="bookcompany" class="form-control"
					style="width: 200px;" required="required"></td>
			</tr>

			<tr>
				<th bgcolor="#ddd">가격</th>
				<td><input type="text" name="bookprice" class="form-control"
					style="width: 200px;" required="required"></td>
			</tr>
			
			<tr>
				<th bgcolor="#ddd">이미지</th>
				<td><input type="file" name="photos" class="form-control"  multiple="multiple"
					style="width: 350px;"></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-info" style="width: 100px;">저장</button>
					<button type="button" onclick="location.href='list'"
						class="btn btn-info" style="width: 100px;">목록</button>
				</td>
			</tr>

		</table>

</form>
</body>
</html>