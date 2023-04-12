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
	String msg = request.getParameter("msg");
	String imgname = request.getParameter("imgname");
	%>

	<h3>
		전달받은 메세지:
		<%=msg%>
	</h3>

	<h3>
		전달받은 이미지명: <img alt="" src="<%=imgname %>">
	</h3>
</body>
</html>