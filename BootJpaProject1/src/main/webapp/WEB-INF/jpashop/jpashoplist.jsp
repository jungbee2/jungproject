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
	<button type="button" class="btn btn-info"
		onclick="location.href='shopform'">상품추가</button>
	<h2 class="alert alert-info" style="width: 800px;">총 ${scount }개의
		상품 정보가 있습니다.</h2>

	<table class="table table-bordered" style="width: 800px;">
		<tr style="text-align: center;">
			<th style="text-align: center;">NO</th>
			<th style="text-align: center;">상품명</th>
			<th style="text-align: center;">가격</th>
			<th style="text-align: center;">사진</th>
			<th style="text-align: center;">입고일</th>
			<th style="text-align: center;">작성일</th>
			<th style="text-align: center;">편집</th>
		</tr>
		<c:forEach var="dto" items="${list }" varStatus="i">
			<tr>
				<td style="text-align: center;">${i.count }</td>
				<td style="text-align: center;"><a onclick="location.href='detail?num=${dto.num}'">${dto.sangpum }</a></td>
				<td style="text-align: center;"><fmt:formatNumber value="${dto.price }" type="currency" /></td>
				<td style="text-align: center;"><img src="/img/${dto.photo }" style="width:200px;"></td>
				<td style="text-align: center;">${dto.ipgoday }</td>
				<td style="text-align: center;"><fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH:mm" /></td>
				<td style="text-align: center;">
				<button type="button" class="btn btn-success btn-xs" onclick="location.href='updateform?num=${dto.num}'">수정</button>
				<button type="button" class="btn btn-danger btn-xs" onclick="location.href='delete?num=${dto.num}'">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>