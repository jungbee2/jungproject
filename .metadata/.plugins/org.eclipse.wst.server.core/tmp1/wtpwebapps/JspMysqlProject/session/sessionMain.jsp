<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

</head>

<body>
	<%
	//세션저장
	session.setAttribute("msg", "happy!!");
	session.setMaxInactiveInterval(10);
	%>

	<h2>10초안에 눌러주세요!!!</h2>
	<form action="sessionAction.jsp" method="post">
		<h2>가고싶은 여행지는?</h2>
		<input type="radio" value="이탈리아 로마 5박6일" name="travel">이탈리아 로마5박6일&nbsp;
		 <input type="radio" value="캐나다 로키 3박4일" name="travel">캐나다 로키 3박4일&nbsp; 
		<input type="radio" value="미국시애틀 6박7일" name="travel">미국 시애틀 6박7일&nbsp; 
		<input type="radio" value="일본 후쿠오카 2박3일" name="travel" checked="checked">일본 후쿠오카 2박3일&nbsp; 
		
		<input type="submit" value="상품신청">
	</form>
</body>
</html>