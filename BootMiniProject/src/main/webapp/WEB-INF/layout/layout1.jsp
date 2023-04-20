<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">
body {
	font-size: 1.3em;
	font-family: 'Noto Sans KR';
}

div.layout div {
	border: none;
}

div.layout div.title {
	position:absolute;
	top: 10px;
	left:400px;
	height: 100px;
}

div.layout div.menu {
	position:absolute;
	top: 150px;
	left:0px;
	height: 100px;
}

div.layout div.info {
	position:absolute;
	top: 250px;
	left:30px;
	height: 200px;
}

div.layout div.main {
	position:absolute;
	top: 250px;
	left:300px;
	height: 800px;
}

</style>
</head>
<body>
	<div class="layout">
		<div class="title">
			<tiles:insertAttribute name="title" />
		</div>
		<div class="menu">
			<tiles:insertAttribute name="menu" />
		</div>
		<div class="info">
			<tiles:insertAttribute name="info" />
		</div>
		<div class="main">
			<tiles:insertAttribute name="main" />
		</div>
	</div>
</body>
</html>