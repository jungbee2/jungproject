<%@page import="info.model.infoDao"%>
<%@page import="info.model.infoDto"%>
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
	//한글 엔코딩
	request.setCharacterEncoding("utf-8");
	//데이터 읽기
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");

	infoDto dto = new infoDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setAddr(addr);

	//insert 메서드로 전달
	infoDao dao = new infoDao();
	dao.updateInfo(dto);

	//출력jsp로 이동_url주소창이 바뀜
	response.sendRedirect("infoList.jsp");
	%>
</body>
</html>