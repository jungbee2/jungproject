<%@page import="myshop.model.MyshopDao"%>
<%@page import="myshop.model.MyshopDto"%>
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
	<%-- 
<%
	//데이터 읽기
	String num=request.getParameter("num");
	String sangpum = request.getParameter("sangpum");
	String photo = request.getParameter("photo");
	int price = Integer.parseInt(request.getParameter("price"));
	String ipgoday = request.getParameter("ipgoday");
	
	MyshopDto dto= new MyshopDto();
	dto.setNum(num);
	dto.setSangpum(sangpum);
	dto.setPhoto(photo);
	dto.setPrice(price);
	dto.setIpgoday(ipgoday);
	
	
	//dao
	MyshopDao dao = new MyshopDao();
	
	dao.insertShop(dto);
	
	//목록
	response.sendRedirect("shoplist.jsp");
	%>
	--%>

	<jsp:useBean id="dao" class="myshop.model.MyshopDao"></jsp:useBean>
	<jsp:useBean id="dto" class="myshop.model.MyshopDto"></jsp:useBean>

	<jsp:setProperty property="*" name="dto" />

	<%
	dao.updateShop(dto);
	response.sendRedirect("shoplist.jsp");
	//response.sendRedirect("detailpage.jsp?num="+dto.getNum());
	%>
</body>
</html>