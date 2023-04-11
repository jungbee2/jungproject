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
<div style="margin-left:200px; margin-top:50px;">
<button type="button" class="btn btn-warning btn-sm" onclick="location.href='shop/form1'">각각읽기</button>
<button type="button" class="btn btn-warning btn-sm" onclick="location.href='shop/form2'">DTO읽기</button>
<button type="button" class="btn btn-warning btn-sm" onclick="location.href='shop/form3'">MAP읽기</button><br>
<hr>
<button type="button" class="btn btn-warning btn-sm" onclick="location.href='board/uploadform1'">이미지업로드</button>
<button type="button" class="btn btn-warning btn-sm" onclick="location.href='board/uploadform2'">이미지여러개업로드</button>
</div>
</body>
</html>