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
* {
	box-sizing: border-box;
}

.weegle {
	width: 220px;
	display: block;
	text-align: center;
	margin: auto;
}

.search {
	position: relative;
	text-align: center;
	width: 220px;
	margin: 0 auto;
}

.searchipput {
	width: 100%;
	border-radius: 20px;
	border: 1px solid #bbb;
	margin: 10px 0;
	padding: 10px 15px 10px 40px;
	font-family: fontAwesome;
}

#searchcon {
	position: absolute;
	top: 25px;
	left: 15px;
	margin: 0;
}

.box {
	display: inline;
	width: auto;
	border-radius: 0;
	margin: auto;
	text-align: center;
	color: #bbb;
}

</style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath()%>"/>

<c:if test="${sessionScope.loginok==null}">
	<img alt="img" src="${root }/image/welcome.png" width="130" height="130" class="img-circle">
</c:if>

<c:if test="${sessionScope.loginok!=null}">
	<img alt="img" src="${root }/photo/${sessionScope.loginphoto }" width="130" height="130" class="img-circle">
</c:if>

<div class="search">
      <i class="glyphicon glyphicon-search" id="searchcon"></i>
      <input class="searchipput"type="text">
</div>
<br>
<img alt="" src="../image/hello.gif" style="width:200px;">
<br><br><br>
<span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;jungb1203@naver.com<br>
<span class="glyphicon glyphicon-cog"></span>&nbsp;쌍용교육센터<br>
<a href="">
<img alt="" src="../image/insta.png" style="width:15px;">&nbsp;쌍용교육센터
</a>
</body>
</html>