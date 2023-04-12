<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="myshop.model.MyshopDto"%>
<%@page import="myshop.model.MyshopDao"%>
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
	<%
	//num읽기
	String num = request.getParameter("num");
	//dao선언
	MyshopDao dao = new MyshopDao();
	//num에 해당하는 dto얻기
	MyshopDto dto = dao.getSangpum(num);

	NumberFormat nf = NumberFormat.getCurrencyInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	%>

	<div style="margin: 30px 30px;">
		<table class="table table-borderd" style="width: 600px;">
			<caption>
				<b>상품상세보기</b>
			</caption>
			<tr>
				<td rowspan="4"><img alt=""
					src="../쇼핑몰사진/<%=dto.getPhoto()%>.jpg"></td>
			</tr>


			<tr>
				<th>상품명</th>
				<td><%=dto.getSangpum()%></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><%=nf.format(dto.getPrice())%></td>
			</tr>

			<tr>
				<th>입고일</th>
				<td><%=dto.getIpgoday()%></td>
			</tr>

			<tr>
				<td colspan="3" align="center">
					<button type="button" class="btn btn-warning"
						onclick="history.back()">이전으로</button>

					<button type="button" class="btn btn-warning"
						onclick="location.href='addform.jsp'">상품등록</button>

					<button type="button" class="btn btn-warning"
						onclick="location.href='shoplist.jsp'">상품목록</button>

					<button type="button" class="btn btn-warning"
						onclick="location.href='updateform.jsp?num=<%=dto.getNum()%>'">수정</button>

					<button type="button" class="btn btn-warning"
						onclick="location.href='delete.jsp?num=<%=dto.getNum()%>'">삭제</button>

				</td>
			</tr>

		</table>
	</div>
</body>
</html>