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
<c:set var="root" value="<%=request.getContextPath() %>"/>
<body>
<div style="marign-left:100px; margin-top:100px;">
<img alt="logoutimg" src="${root }/image/logout.png" width="150" align="left" hspace="20">
<br><br><br><br><br><br><br><br><br><br>
<!-- id통한 이름받아서 표시 -->
<b>${name }님 로그인중</b><br><br><br>
<button type="button" class="btn btn-danger" onclick="location.href='logoutprocess'">로그아웃</button>
</div>
</body>
</html>