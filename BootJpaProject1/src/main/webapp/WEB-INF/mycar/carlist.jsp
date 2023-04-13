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
<style type="text/css">
.box{
width:30px;
height:30px;
border:1px solid lightgray;
border-radius: 100px;
}

</style>
</head>
<body>
	<fmt:setLocale value="ko_kr" scope="session" />
	<button type="button" class="btn btn-info"
		onclick="location.href='carform'">차정보추가</button>
	<h2 class="alert alert-info" style="width: 800px;">총 ${tcount }개의
		자동차 정보가 있습니다.</h2>

	<table class="table table-bordered" style="width: 800px;">
		<tr style="text-align: center;">
			<th style="text-align: center;">NO</th>
			<th style="text-align: center;">차종</th>
			<th style="text-align: center;">단가</th>
			<th style="text-align: center;">색상</th>
			<th style="text-align: center;">구입일</th>
			<th style="text-align: center;">수령일</th>
			<th style="text-align: center;">편집</th>
		</tr>
		<c:forEach var="dto" items="${list }" varStatus="i">
			<tr>
				<td style="text-align: center;">${i.count }</td>
				<td style="text-align: center;">${dto.carname }</td>
				<td style="text-align: center;"><fmt:formatNumber value="${dto.carprice }" type="currency" /></td>
				<td style="text-align: center;"><div class="box" style="background-color:${dto.carcolor } "></div></td>
				<td style="text-align: center;">${dto.carguip }</td>
				<td style="text-align: center;"><fmt:formatDate value="${dto.guipday }" pattern="yyyy-MM-dd HH:mm" /></td>
				<td style="text-align: center;">
				<button type="button" class="btn btn-success btn-xs" onclick="location.href='updateform?num=${dto.num}'">수정</button>
				<button type="button" class="btn btn-danger btn-xs" onclick="location.href='delete?num=${dto.num}'">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>