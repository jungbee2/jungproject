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

<style>
div.box {
	float: left;
	width: 50px;
	height: 50px;
	border-radius: 100px;
	margin-right: 10px;
}
</style>

</head>

<body>
	<%
	String sang = request.getParameter("sang");
	String[] color = request.getParameterValues("scolor");
	String size = request.getParameter("ssize");
	String chuga = request.getParameter("schuga");
	%>

	<h2>
		상품명:
		<%=sang%></h2>


	<h2>
		색상: <br>
		<%
		if (color == null) {
		%>
		<font color="red">색상 선택안함</font>
		<%
		} else {
		for (String s : color) {
		%>
		<div style="background-color:<%=s%>" class="box"></div>
		<%
		}
		%>
		<br><br><b>총 <%=color.length%>개 선택함
		</b>
		<%
		}
		%>

	</h2>
	<h2>
		사이즈:
		<%=size%></h2>
	<h2>
		추가상품:
		<%=chuga%></h2>
</body>
</html>