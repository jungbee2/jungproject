<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="uprode.Uprode" %>
<%@ page import="uprode.UprodeDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
  <% 
  
  String id = null;
  if (session.getAttribute(id) != null) {
	  id = (String) session.getAttribute("id");
  }
  
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
  
  Uprode uprode = new UprodeDAO().getUprode(num);
  
  %>
  
  
<div class="content_row_1">
  <table class="board_view">
     <caption>OBJECT LIST</caption>
  <tr>
 <td><%=uprode.getCategory()%></td>
 </tr>
 
<tr>
 <td><%=uprode.getName() %></td>
 </tr>
 <tr>
 <td ><img src="object_photo/<%=uprode.getPhoto() %>" style="width:30%;"> </td>
 </tr>
 <tr> 
 
  <tr>
 <td ><%=uprode.getPrice()%> </td>
 </tr>
 <tr> 
   <td><%=uprode.getExp1() %></td> 
 </tr>
 
  <tr> 
   <td><img src="object_photo/<%=uprode.getExp2() %>"></td> 
 </tr>
 
  <tr> 
   <td><%=uprode.getVolume() %></td> 
 </tr>
  <%

  %>
 <tr>
 <td>
     
	<input type=button value="목록" OnClick="window.location='object_list.jsp'">
	<input type=button value="수정" OnClick="window.location='object_modify.jsp?num=<%=num%>'">
	<input type=button value="삭제" OnClick="window.location='objectdelete_ok.jsp?num=<%=num%>'">
</td>
</tr>
</table>
</div>


</body>
</html>