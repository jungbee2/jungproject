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
	<fmt:setLocale value="ko_kr" scope="session" />
		<table class="table table-bordered" style="width: 600px;">


			<caption>
				<b>내용보기</b>
			</caption>
			
			
			<tr>
				<td>상품명</td>
				<td>${dto.sangpum }</td>
			</tr>
			<tr>
				<td>가격</td>
				<td><fmt:formatNumber value="${dto.price }" type="currency" /></td>
			</tr>
			
			<tr>
				<td>사진 </td>
				<td><img src="/img/${dto.photo }" style="width:200px;"></td>
			</tr>
			
			<tr>
				<td>입고일</td>
				<td>${dto.ipgoday }</td>
			</tr>
			
			<tr>
				<td>작성일</td>
				<td><fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH:mm" /></td>
			</tr>
		</table>
		<button type="button" class="btn btn-success" onclick="location.href='updateform?num=${dto.num}'">수정</button>
		<button type="button" class="btn btn-danger" onclick="location.href='delete?num=${dto.num}'">삭제</button>
		<button type="button" class="btn btn-default" onclick="location.href='list'">목록</button>
					
</body>
</html>