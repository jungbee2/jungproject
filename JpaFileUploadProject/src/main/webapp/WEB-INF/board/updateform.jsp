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
	<div style="margin: 50px 400px;">
		<form action="update" method="post" enctype="multipart/form-data">
		<input type="hidden" name="num" value="${dto.num }">
			<table class="table table-bordered" style="width: 700px;">
				<caption><b>수정하기</b></caption>
				<tr>
					<th style="width:100px; color:#fff; background-color:pink;">글쓴이</th>
					<td>
					<input type="text" name="writer" value="${dto.writer }" required="required" class="form-control">
					</td>
				</tr>
				<tr>
					<th style="width:100px; color:#fff; background-color:pink;">제목</th>
					<td style="width:600px;">
					<input type="text" name="subject" value="${dto.subject }" required="required" class="form-control"></td>
				</tr>
				<tr>
					<th style="width:100px; color:#fff; background-color:pink;">사진</th>
					<td><input type="file"  name="upload" value="${dto.photo }" class="form-control"></td>
				</tr>
				
					
				<tr>
					<td colspan="2">
					<textarea name="content" required="required" style="width: 700px; height: 300px; padding: 20px;">${dto.content }</textarea>
					</td>
				</tr>
				
				<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">수정하기</button>
					<button type="button" class="btn btn-default" onclick="location.href='list'">목록</button>
				</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>