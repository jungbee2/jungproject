<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="bbs.Notice" %>
<%@ page import="bbs.NoticeDAO" %>
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
   		script.println("alert('유효하지 않은 글입니다.')");
   		script.println("location.href='notice_list.jsp'");
   		script.println("</script>");
   }  
     
NoticeDAO noticeDAO = new NoticeDAO();
Notice notice = new NoticeDAO().getNotice(num);

if (pwd.equals(notice.getPwd())) {
	  

      
	        int result = noticeDAO.delete(num);

				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('해당 글을 삭제하였습니다.')");
				script.println("location.href='notice_list.jsp';");
				script.println("</script>");
		
			}

			
else {
	  
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('동일한 비밀번호를 입력해주세요.')");
		script.println("history.back()");
		script.println("</script>");
	  
	  
		    
}



		 %>





<title>Insert title here</title>
</head>
<body>

</body>
</html>