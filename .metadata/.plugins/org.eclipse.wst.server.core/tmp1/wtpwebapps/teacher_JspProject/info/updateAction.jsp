<%@page import="info.model.InfoDao"%>
<%@page import="info.model.InfoDto"%>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
  <%
  	//한글엔코딩
  	request.setCharacterEncoding("utf-8");
  //데이타읽기
  String num=request.getParameter("num");
  String name=request.getParameter("name");
  String addr=request.getParameter("addr");
  
  InfoDto dto=new InfoDto();
  dto.setNum(num);
  dto.setName(name);
  dto.setAddr(addr);
  
  InfoDao dao=new InfoDao();
  dao.updateInfo(dto);
  
  //수정한후 다시 목록
  response.sendRedirect("infoList.jsp");
  %>
</body>
</html>