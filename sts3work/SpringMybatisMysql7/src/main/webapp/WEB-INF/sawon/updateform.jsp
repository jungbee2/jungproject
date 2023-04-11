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
<h2>사원 수정</h2>
<form action="update" method="post" enctype="multipart/form-data">

<input type="hidden" name="num" value="${dto.num }">
<table class="table table bordered" style="width:500px;">
	<caption><b>사원데이터수정</b></caption>
			<tr>
				<th bgcolor="pink">사원명</th>
				<td><input type="text" name="name" class="form-control"
					required="required" value="${dto.name }"></td>
			</tr>


			<tr>
				<th bgcolor="pink">부서명</th>
				<td><input type="text" name="buseo" class="form-control"
					 required="required" value="${dto.buseo}"></td>
			</tr>


			<tr>
				<th bgcolor="pink">사진</th>
				<td><input type="file" name="upload" class="form-control"></td><!--  사진은 name 다르게 함-->
			</tr>
			
			<tr>
				<th bgcolor="pink">운전면허</th>
				<td>
				
				<input type="radio" name="driver" value="있음" 
				${dto.driver=="있음"?"checked":"" }> 있음
				<input type="radio" name="driver" value="없음"
				${dto.driver=="없음"?"checked":"" }> 없음
				
				
				<%-- 
				<c:if test="${dto.driver=='있음' }">
				<input type="radio" name="driver" value="있음" checked="checked"> 있음
				<input type="radio" name="driver" value="없음"> 없음
				</c:if>
				
				<c:if test="${dto.driver=='없음' }">
				<input type="radio" name="driver" value="있음"> 있음
				<input type="radio" name="driver" value="없음" checked="checked"> 없음
				</c:if> --%>
				</td>
			</tr>
		</table>
		
		<button type="submit" class="btn btn-default">저장</button>
		<button type="button" class="btn btn-default"
		onclick="location.href='list'">목록</button>
</form>
</body>
</html>