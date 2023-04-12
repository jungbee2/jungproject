<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="uprode.Uprode" %>
<%@ page import="uprode.UprodeDAO" %>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
      request.setCharacterEncoding("UTF-8");
      String pwd = request.getParameter("password");

      int num = 0;
      if (request.getParameter("num") != null){
   	  num = Integer.parseInt(request.getParameter("num"));
      }

     if ( num == 0 ) {
   		PrintWriter script = response.getWriter();
   		script.println("<script>");
   		script.println("alert('유효하지 않은 상품입니다.')");
   		script.println("location.href='object_list.jsp'");
   		script.println("</script>");
   }  
     
UprodeDAO uprodeDAO = new UprodeDAO();
Uprode uprode = new UprodeDAO().getUprode(num);

      
	        int result = uprodeDAO.delete(num);

				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('해당 상품을 삭제하였습니다.')");
				script.println("location.href='object_list.jsp';");
				script.println("</script>");




		 %>





<title>Insert title here</title>
</head>
<body>

</body>
</html>