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
	String pass = request.getParameter("pass");
	String num = request.getParameter("num");

	//비밀번호가 a1234면 삭제
	if (pass.equals("a1234"))
		response.sendRedirect("ssdelete.jsp?num=" + num);
	else {
	%>
	<script type="text/javascript">
		alert("비밀번호가 맞지않습니다.");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>