<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
 	int idx = Integer.parseInt(request.getParameter("idx")); 
 %>


<script language = "javascript">  // 자바 스크립트 시작

function deleteCheck()
  {
   var form = document.deleteform;
   
   if( !form.password.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.password.focus();
    return;
   }
 		form.submit();
  } 
</script>



<title>Insert title here</title>
</head>
<body>
<div class="content_row_1">
  <table class="board_delete">
  <form name=deleteform method=post action="q&adelete_ok.jsp?idx=<%=idx%>">
     <caption>Notice</caption>
 <tr>
 <td>비밀번호</td>
 <td><input name="password" type="password" size="50" maxlength="100"></td>
 </tr>
 <tr>
 <td colspan="2"><input type=button value="삭제" OnClick="javascript:deleteCheck();">
 <input type=button value="취소" OnClick="javascript:history.back(-1)">
 </tr>
</body>
</html>