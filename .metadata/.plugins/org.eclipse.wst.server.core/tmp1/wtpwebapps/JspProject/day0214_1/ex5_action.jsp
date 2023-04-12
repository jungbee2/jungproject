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
	//request.setCharacterEncoding("utf-8"); //한글이 깨질시 써준다
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	String lic = request.getParameter("license");
	%>

	<h4>결과값 출력</h4>
	<h6>
		이름:
		<%=name%></h6>
	<h6>
		비밀번호:
		<%=pass%></h6>
	<h6>
		라이선스:
		<%=lic == null ? "없음" : "있음"%></h6>
</body>
</html>