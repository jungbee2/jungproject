<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@page import="uprode.Uprode"%>
<%@page import="uprode.UprodeDAO"%>
<%@page import="java.util.ArrayList"%>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  a, a:hover{
   color : #000000;
   text-decoration : none;
   }
</style>
</head>
<body>
<%
     int pageNumber =1; //기본페이지 1페이지
     if (request.getParameter("pageNumber") != null) {
    	 pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
     }
     int total = 0;
 
     %>

 <section class="content_section">
                        <div class="content_row_1">
                            <table class="board_table">
                                <caption>OBJECT LIST</caption>
                                <thead>
                                    <tr>
                                        <th align="center">번호</th>
                                        <th align="center">카테고리</th>
                                        <th align="center">상품 이름</th>
                                        <th align="center">상품 가격 </th>
                                        <th align="center">재고 수량</th>
                                        <th align="center">등록 날짜</th>
                                    </tr>
                                </thead>


<% 
   	 
  UprodeDAO uprodeDAO = new UprodeDAO();
  ArrayList<Uprode> list = uprodeDAO.getList(pageNumber);
  for ( int i = 0; i < list.size(); i++) {
	  
	  %>
	  <tr>
	  <td align="center"><a href="object_view.jsp?num=<%=list.get(i).getNum()%>"><%=list.get(i).getNum()%></a></td>
	  <td align="center"><a href="object_view.jsp?num=<%=list.get(i).getNum()%>"><%=list.get(i).getCategory()%></td>
	  <td align="center"><%=list.get(i).getName()%></td>
	  <td align="center"><%=list.get(i).getPrice()%></td>
	  <td align="center"><%=list.get(i).getVolume()%></td>
	  <td align="center"><%=list.get(i).getTime().substring(0, 11) %></td>
	   
	 </tr>
 
 
 <%
  }
%>
               
</table>

  <%
  
    if(pageNumber != 1) {
    %>
    	<a href="notice_list.jsp?pageNumber=<%=pageNumber - 1%>"><span class="list_prev_btn">상품목록 이전 버튼</span></a>
    <%	
    } if(uprodeDAO.nextPage(pageNumber + 1)){
   %>


    	<a href="notice_list.jsp?pageNumber=<%=pageNumber + 1%>"><span class="list_next_btn">상품목록 다음 버튼</span></a>
   <%
    }
  %>

<div class="write_box"><a href="object_uprode.jsp">상품 등록</a></div>
</body>
</html>