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
<div style="margin:30px 30px;">
	<form action="update" method="post" enctype="multipart/form-data">
		<!-- hidden 5개 -->
		<input type="hidden" name="num" value="${dto.num }">
		<input type="hidden" name="currentPage" value="${currentPage }">
	
	<table class="table table-striped" style="width: 500px;">
		<caption><b>
			<c:if test="${num==0 }">새글쓰기</c:if>
			<c:if test="${num!=0 }">답글쓰기</c:if>
		</b></caption>
		
		<tr>
			<th width="100" bgcolor="#ddd">작성자</th>
			<td>
				<input type="text" name="writer" class="form-control" value="${dto.writer }" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100" bgcolor="#ddd">제목</th>
			<td>
				<input type="text" name="subject" class="form-control" value="${dto.subject }" required="required">
			</td>
		</tr>
		
		<tr>
			<th width="100" bgcolor="#ddd">사진</th>
			<td>
				<input type="file" name="upload" class="form-control" multiple="multiple">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<textarea  style="width: 480px; height:150px;" name="content"
				class="form-control" required="required">${dto.content }</textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info">수정</button>
				<button type="button" class="btn btn-success" onclick="location.href='list?currentPage=${currentPage}'">목록</button>
			</td>
		</tr>
	</table>
	
	</form>
</div>
</body>
</html>