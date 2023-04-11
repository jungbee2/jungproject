<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 추가할부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 추가할부분 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- 추가할부분 -->
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<h2>MEMBER LIST</h2>

	<c:if test="${totalCount==0 }">
		<h3 class="alert alert-info">저장된 차의 정보가 없습니다.</h3>
	</c:if>

	<c:if test="${totalCount>0 }">
		<h3 class="alert alert-info">총 ${totalCount } 개의 글이 있습니다.</h3>

		<table class="table table-bordered" style="width: 800px;">
			<tr bgcolor="#f0f0fc">
				<th>NO</th>
				<th>이름</th>
				<th>핸드폰번호</th>
				<th>주소</th>
				<th>가입날짜</th>
				<th>수정  |  삭제</th>
			</tr>

			<c:forEach var="dto" items="${list }" varStatus="i">
				<tr>
					<td>${i.count }</td>
					<td>${dto.name }</td>
					<td>${dto.hp }</td>
					<td>${dto.addr }</td>
					<td>${dto.gaipday }</td>

					<td><button type="button" class="btn btn-info btn-xs"
							onclick="location.href='updateform?num=${dto.num}'">수정</button>
						<button type="button" class="btn btn-danger btn-xs"
							onclick="location.href='delete?num=${dto.num}'">삭제</button></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<button type="button" class="btn btn-default"
		onclick="location.href='writeform'">멤버추가</button>

</body>
</html>