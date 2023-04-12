<%@page import="login.model.LoginDao"%>
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
	//세션으로 부터 아이디를 읽어온다
	String id = (String) session.getAttribute("idok");

	//아이디에 해당하는 이름을 dao로부터 얻어올 수 있다
	LoginDao db = new LoginDao();
	String name = db.getName(id);
	%>

	<br>
	<br>
	<b style="color: blue; margin-left: 100px;"><%=name%></b> 님이 로그인 하셨습니다.
	&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
	<input type="button" value="로그아웃"
		onclick="location.href='logoutproc.jsp'" class="btn btn-danger">
	<br>
	<br>
	<img alt="" src="../image/2.png" style="margin-left: 100px;">

</body>
</html>