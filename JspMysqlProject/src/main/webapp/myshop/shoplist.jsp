<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="myshop.model.MyshopDto"%>
<%@page import="java.util.List"%>
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
	MyshopDao dao = new MyshopDao();
	List<MyshopDto> list = dao.getAllSangpums();
	%>

	<div style="margin: 30px 30px;">
		<h3 class="alert alert-info" style="width: 800px">Myshop 목록</h3>

		<br>
		<button type="button" class="btn btn-info btn-sm"
			onclick="location.href='addform.jsp'">상품추가</button>
		<br>
		<table class="table table-bordered" style="width: 800px;">
			<tr class="table-info" style="text-align: center;">
				<th width="60">번호</th>
				<th width="300">상품명</th>
				<th width="120">가격</th>
				<th width="160">입고일</th>
				<th width="160">등록일</th>
			</tr>

			<%
			if (list.size() == 0) {
			%>

			<tr>
				<td colspan="5" align="center">
					<h3>
						<b>등록된 상품이 없습니다.</b>
					</h3>
				</td>
			</tr>
			<%
			} else {

			NumberFormat nf = NumberFormat.getCurrencyInstance();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM dd HH시");

			for (int i = 0; i < list.size(); i++) {
				MyshopDto dto = list.get(i);
			%>
			<tr>
				<td align="center"><%=i + 1%></td>
				<td><img alt="" src="../쇼핑몰사진/<%=dto.getPhoto()%>.jpg"
					width="40" height="40" class="img-thumbnail">
					
					
					 <!-- 상품명 클릭시 상세페이지 이동 -->
					<a href="detailpage.jsp?num=<%=dto.getNum()%>"
					style="color: black; text-decoration: none;"> <b><%=dto.getSangpum()%></b></a>
				</td>

				<td align="center"><%=nf.format(dto.getPrice())%></td>
				<td align="center"><%=dto.getIpgoday()%></td>
				<td align="center"><%=sdf.format(dto.getWriteday())%></td>
			</tr>
			<%
			}
			}
			%>

		</table>
	</div>
</body>
</html>