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
	<table class="table table-bordered" style="width: 700px; margin:100px 100px;">
		<tr>
			<td>
			<h3 style="padding:50px 10px 10px 10px;"><b>${dto.subject }</b></h3>
				<span style="color:gray; float:right; font-size:14px; padding:10px;"><fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH:mm"/></span>
			
				<span style="color:gray; float:left; font-size:14px; padding:10px;">작성자 : ${dto.name }(${dto.myid })</span>
				
				<c:if test="${dto.uploadfile!='no' }">
				<br><br>
					<span style="float:right; padding:10px;">
					<a href="download?clip=${dto.uploadfile }">
						<span class="glyphicon glyphicon-download-alt"></span>
						
						<b>${dto.uploadfile }</b>
					</a>
					</span>
				</c:if>
			
			</td>
			
		</tr>
	
		<tr>
			<td>
				<c:if test="${bupload==true }">
					<img alt="이미지" src="/photo/${dto.uploadfile }" style="max-width:300px;">
				</c:if>
				
				<br><br>
				<div style="padding:20px;">
				 ${dto.content }
				</div>
				<br><br>
				<b style="padding:10px;">조회: ${dto.readcount }</b>
			</td>
		</tr>
		
		
		<!-- 버튼 -->
		
		<tr>
			<td align="right">
			
			<!-- 글쓰기는 로그인 중일때만 -->
			
				<c:if test="${sessionScope.loginok!=null }">
				<button type="button" class="btn btn-default" onclick="location.href='form'" style="width:80px;">글쓰기</button>
				</c:if>
				<button type="button" class="btn btn-default" onclick="location.href='list?currentPage=${currentPage}'" style="width:80px;">목록</button>
				
				<!-- 로그인 중이면서, 본인글만 수정, 삭제 버튼 보이게  -->
				<c:if test="${sessionScope.loginok !=null and sessionScope.myid==dto.myid}">
				<button type="button" class="btn btn-default" onclick="location.href='updateform?num=${dto.num}&currentPage=${currentPage }'" style="width:80px;">수정</button>
				<button type="button" class="btn btn-default" onclick="location.href='delete?num=${dto.num}&currentPage=${currentPage }'" style="width:80px;">삭제</button>
				</c:if>
			</td>
		</tr>
	</table>
</body>
</html>