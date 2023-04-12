<%@page import="sinsang.model.SinsangDto"%>
<%@page import="sinsang.model.SinsangDao"%>
<%@page import="java.util.Vector"%>
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
SinsangDao dao = new SinsangDao();
Vector<SinsangDto> list = dao.getAllSinsangDatas();
%>
<body>
	<!-- 번호  이름  핸드폰  혈액형  생년월일  수정/삭제 -->

	<div style="margin: 30px 30px">
		<button type="button" class="btn btn-info"
			onclick="location.href='addform.jsp'">개인정보추가</button>
		<hr>
		<table class="table table-hover" style="width: 500px;">
			<caption>
				<b> 개인정보내역</b>
			</caption>

			<tr>
				<th width="60">번호</th>
				<th width="120">이름</th>
				<th width="160">핸드폰</th>
				<th width="80">혈액형</th>
				<th width="150">생년월일</th>
			</tr>

			<%
			for (int i = 0; i < list.size(); i++) {
				SinsangDto dto = list.get(i);
			%>
			<tr>
				<td align="center"><%=i + 1%></td>
				<!-- 	<td align="center"><dto.getNum() %>%></td> -->
				<td><a href="sangsepage.jsp?num=<%=dto.getNum()%>"style="text-decoration: none; color: block;"><%=dto.getName()%></a></td>
				<td><%=dto.getHp()%></td>
				<td><%=dto.getBlood()%></td>
				<td><%=dto.getBirth()%></td>
			</tr>

			<%
			}
			%>
		</table>
	</div>
</body>
</html>