<%@page import="team.model.TeamDao"%>
<%@page import="team.model.TeamDto"%>
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
  String name=request.getParameter("iname");
  String driver=request.getParameter("driver");
  System.out.print(driver); //확인...체크안할시 null 들어가는지 확인(콘솔,db)
  String hp=request.getParameter("hp");
  
  //dto선언
  TeamDto dto=new TeamDto();
  
  dto.setMyname(name);
  dto.setDriver(driver==null?"없음":"있음");
  dto.setHp(hp);
  
  //insert메서드 호출
  TeamDao dao=new TeamDao();
  dao.insertTeam(dto);
  
  //목록
  response.sendRedirect("teamList.jsp");
  %>
  
</body>
</html>