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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<style type="text/css">

	body{
	font-size:2em;
	font-family:'Noto Sans KR';
	}
	
	ul.menu{
	list-style:none;
	}
	
	ul.menu li{
	width:160px;
	float:left;
	border: none;
	height: 50px;
	line-height:50px;
	text-align:center;
	font-size: 16px;
	font-weight:bold;
	background-color: #fafaf1;
	cursor:pointer;
	}
	
	ul.menu li:hover{

	border: none;

	text-align:center;
	font-size: 20px;
	background-color:#FFB6C1;
	font-weight:bold;
	color:#fff;
	cursor:pointer;
	}
	ul.menu li a{
	color:black;
	text-decoration:none;
	}
	
</style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<ul class="menu">
	<li>
		<a href="${root }/">HOME</a>
	</li>
	
	<li>
		<a href="${root }/ipgo/form">상품등록</a>
	</li>
		
	<li>
		<a href="${root }/ipgo/list">상품목록</a>
	</li>
	
	<li>
		<a href="${root }/board/list">게시판</a>
	</li>
	<li>
		<a href="${root }/smart/list">스마트게시판</a>
	</li>
	<li>
		<a href="${root }/reboard/list">답변형게시판</a>
	</li>
	
	<c:if test="${sessionScope.loginok!=null and sessionScope.myid=='admin' }">
	<li>
		<a href="${root }/member/list">회원목록</a>
	</li>
	</c:if>
	
	
	<!--로그인  -->
	<c:if test="${sessionScope.loginok==null}">	
	<li>
		<a href="${root }/login/main">로그인</a>
	</li>
	</c:if>
	
	<!--로그아웃 -->
	<c:if test="${sessionScope.loginok!=null}">	
	<li>
		<a href="${root }/login/main">로그아웃</a>
	</li>
	</c:if>
	
	<!-- 회원가입  -->
	<c:if test="${sessionScope.loginok==null}">	
	<li>
		<a href="${root }/member/form">회원가입</a>
	</li>
	</c:if>	
	
	<li>
		<a href="${root }/member/myinfo">나의정보</a>
	</li>
	
	<li>
		<a href="${root }/load/map">오시는길</a>
	</li>
	
	
</ul>
</body>
</html>