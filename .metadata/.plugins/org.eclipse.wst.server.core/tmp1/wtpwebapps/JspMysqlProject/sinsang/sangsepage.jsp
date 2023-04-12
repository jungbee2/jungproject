<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="sinsang.model.SinsangDto"%>
<%@page import="sinsang.model.SinsangDao"%>
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
	<!-- 홍길동님의 개인정보

이름: 홍길동
전화번호: ...  -->

	<%
	//num읽기
	String num = request.getParameter("num");

	//dao선언
	SinsangDao dao = new SinsangDao();
	//num에 해당하는 dto얻기
	SinsangDto dto = dao.getData(num);

	NumberFormat nf = NumberFormat.getCurrencyInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	%>

	<div style="margin: 30px 30px;">
		<table class="table table-borderd" style="width: 500px;">
			<caption>
				<h2 class="alert alert-info" style="width: 500px;"><%=dto.getName()%>님의
					개인정보
				</h2>
			</caption>
			<tr>
				<th style="background-color: lightgray; text-align: center;">이름</th>
				<td><%=dto.getName()%></td>
			</tr>

			<tr>
				<th style="background-color: lightgray; text-align: center;">혈액형</th>
				<td><%=dto.getBlood() %>
			</tr>

			<tr>
				<th style="background-color: lightgray; text-align: center;">핸드폰</th>
				<td><%=dto.getHp() %></td>
			</tr>

			<tr>
				<th style="background-color: lightgray; text-align: center;">생년월일</th>
				<td><%=dto.getBirth() %></td>
			</tr>
			
			<tr>
			<td colspan="2" align="center">
			<input type="button" class="btn btn-info" value="뒤로가기" onclick="history.back()">
			<input type="button" class="btn btn-info" value="수정" onclick="location.href='updateform.jsp?num=<%=dto.getNum()%>'">
			<input type="button" class="btn btn-info" value="삭제" onclick="location.href='deletepassform.jsp?num=<%=dto.getNum()%>'">
			</td>
			</tr>
		</table>
	</div>
</body>
</html>