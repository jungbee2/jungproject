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
<script type="text/javascript">

	function deleteAnswer(idx) {

		var input = prompt("비밀번호를 입력해주세요." + "");

		$.ajax({
			type : 'GET',
			data : {"idx":idx,"pass":input},
			url : "deletepass",
			dataType : "json",
			success : function(res) {
					alert(res.pwck);
					location.reload();
			}
		})

	}
</script>
<style type="text/css">
#answer{
border-bottom:1px solid #ddd;
margin-bottom: 20px;
padding-top:10px;
padding-bottom:10px;
padding-left:20px;
}
</style>
</head>
<body>
	<div style="margin: 50px 50px;">
		<table class="table table-bordered" style="width: 600px;">
			<caption>
				<b>내용보기</b>
			</caption>
			<tr>
				<td style="padding:20px;">
					<h2 style="margin:50px 0px;"><b>${dto.subject }</b></h2>
					
					<span style="float:right; margin-left:20px;">
					조회 ${dto.readcount } &nbsp;&nbsp;&nbsp;
					<fmt:formatDate value="${dto.writeday }"
					pattern="yyyy-MM-dd HH:mm"/>
					</span>
					
					<h5><b>작성자: ${dto.writer }</b></h5>
				</td>
			</tr>
			
			<tr>
			<td style="padding:20px;">
					<pre style="background-color:white; border:0px; padding:30px;">${dto.content }</pre>
					<br><br>
					<c:if test="${dto.photo!='no'}">
						<c:forTokens var="ps" items="${dto.photo }" delims=",">
						<a href="../photo/${ps }">
						 <img alt="" src="../photo/${ps }" style="width: 150px; height:200px;">
						</a>
						</c:forTokens>
					</c:if>
				</td>
			</tr>
			
			<tr>
				<td>
					<br>
					<div id="answer">
						<b>댓글 ${acount }</b><br>
						<!--var:변수  -->
						<c:forEach var="a" items="${alist }">
							${a.nickname } : ${a.content }
							&nbsp;&nbsp;
							<span style="color:gray; font-size:0.8em;">
								<fmt:formatDate value="${a.writeday }" pattern="yyyy-MM-dd HH:mm"/>
							</span>
							&nbsp;&nbsp;
							<span class="glyphicon glyphicon-pencil" style="cursor:pointer; color:green;"></span>
							<span class="adel glyphicon glyphicon-remove" style="cursor:pointer; color:green;" onclick="deleteAnswer(${a.idx})"></span>
							<!--idx="a{idx}" 도가능  -->
							<br>
						</c:forEach>
					</div>
					
					<br>
					
					<form action="ainsert" method="post" class="form-inline" style="padding:20px;">
						<!--hidden-->
						<input type="hidden" name="num" value="${dto.num }">
						<input type="hidden" name="currentPage" value="${currentPage }">
						<b>닉네임: </b>
						<input type="text" name="nickname" class="form-control input-sm" style="width:100px;" required="required">
						<b style="margin-left:30px;">비밀번호: </b>
						<input type="password" name="pass" id="pass" class="form-control input-sm" style="width:100px;" required="required"> 
						<br><br>
						<input type="text" name="content" class="form-control" 
						style="width: 480px;" required="required" placeholder="댓글을 입력해주세요">
						<button type="submit" class="btn btn-info">확인</button>
					</form>
					<hr>
				</td>
			</tr>
			<tr>
			<td align="right">
			<button class="btn btn-default btn-sm"
			onclick="location.href='writeform?currentPage=${currentPage}'">글쓰기</button>
			<button class="btn btn-default btn-sm"
			onclick="location.href='writeform?num=${dto.num}&regroup=${dto.regroup }&restep=${dto.restep }&relevel=${dto.relevel }&currentPage=${currentPage }'">답글</button>
				<button class="btn btn-default btn-sm"
			onclick="location.href='updatepassform?num=${dto.num}&currentPage=${currentPage }'">수정</button>
				<button class="btn btn-default btn-sm"
			onclick="location.href='deletepassform?num=${dto.num}&currentPage=${currentPage }'">삭제</button>
				<button class="btn btn-default btn-sm"
			onclick="location.href='list?currentPage=${currentPage}'">목록</button>
			</td>
			</tr>
			
		</table>
	</div>
</body>
</html>