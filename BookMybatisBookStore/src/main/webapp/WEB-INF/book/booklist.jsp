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

	.table {
		display: inline-block;
		width: 200px;
		margin-right: 20px;
		margin-bottom: 20px;
		vertical-align: top;
	}

</style>
</head>
<body>
<c:if test="${totalCount==0 }">
	<div class="alert alert-info">
		<b>저장된 책정보가 없습니다.</b>
	</div>
</c:if>

<c:if test="${totalCount>0 }">
	<div class="alert alert-info">
		 <b>총 ${totalCount }권의 책 정보가 있습니다.</b> 
	</div>
</c:if>
<br>
<button type="button" class="btn btn-default"  onclick="location.href='form'">등록</button>
<br><br>
<c:forEach var="a" items="${list}">

		<table class="table">
			<tr>
				<td style="height:300px;">
				<c:if test="${a.bookphoto!=null }">
					<img alt="" src="../upload/${a.bookphoto }" style="margin:0 auto; max-width: 180px;" align="left">	
				</c:if>
				
				<c:if test="${a.bookphoto==null }">
					<img alt="" src="../upload/noimg.png" style="margin:0 auto; max-width: 180px;" align="left">	
				</c:if>
				</td>
			</tr>
			<tr>
				<td>
				<h4>${a.bookname }</h4>
				<span>저자: ${a.bookwriter }</span><br>
				<span>출판사: ${a.bookcompany }</span>
				<br>
				<h4>
					<button type="button" class="btn btn-success btn-xs"  onclick="location.href='updateform?num=${a.num}'">수정</button>
					<button type="button" class="btn btn-danger btn-xs" onclick="location.href='delete?num=${a.num}'">삭제</button>
				</h4>
				</td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>