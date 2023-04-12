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
<%
String num = request.getParameter("num");
%>
<body>
	<div style="margin: 100px 100px;">
		<form action="deletepassaction.jsp" method="post">
			<table class="table table-bordered" style="width: 250px;">
				<tr height="120" align="center">
					<td><b>삭제시 필요한 <br>비밀번호를 입력하세요
					</b> <br> <input type="password" name="pass" size="5"
						required="required"> <input type="hidden" name="num"
						value="<%=num%>"> <input type="submit" value="확인"
						class="btn btn-danger"> <input type="button" value="목록"
						onclick="location.href='sslist.jsp'"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>