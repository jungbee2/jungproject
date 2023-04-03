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
<form action="upload2" method="post" enctype="multipart/form-data">
	<table class="table table-borderd" style="width:400px;">
		<caption><b>스프링 업로드(파일여러개)</b></caption>
			<tr>
				<th bgcolor="lightblue" width="100">제목</th>
				<td>
				<input type="text" name="title" class="form-control"
					style="width: 150px;">
				</td>
			</tr>
			
			<tr>
				<th bgcolor="lightblue" width="100">업로드</th>
				<td>
				<input type="file" name="photo" class="form-control"
					style="width: 250px;">
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-info">업로드#2</button>
				</td>
			</tr>
	</table>
</form>
</body>
</html>