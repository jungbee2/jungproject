<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="bbs.NoticeDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bbs" class="bbs.Notice" scope="page" /> <!-- user 클래스를 자바빈즈로써 사용 -->
<jsp:setProperty name="bbs" property="title"  />  
<jsp:setProperty name="bbs" property="name"  />  
<jsp:setProperty name="bbs" property="pwd" />
<jsp:setProperty name="bbs" property="memo" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>

 	<%

    
	    NoticeDAO noticeDAO = new NoticeDAO();
	    int result = noticeDAO.write(bbs.getPwd(), bbs.getTitle(), bbs.getName(), bbs.getMemo());
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패하였습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='notice_list.jsp';");
				script.println("</script>");
			}
		    
		

	

	    
	%>




</body>
</html>