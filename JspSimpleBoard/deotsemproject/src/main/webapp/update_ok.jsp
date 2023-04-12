<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="user.User" %>
<%@ page import="user.UserDAO" %>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>

 	<%

request.setCharacterEncoding("UTF-8");
 	
 	 String name = request.getParameter("name");
 	 String pwd = request.getParameter("pwd");
 	 String email = request.getParameter("email");
 	 String add1 = request.getParameter("add1");
 	 String add2 = request.getParameter("add2");
 	 String add3 = request.getParameter("add3");
 	 String birthyear = request.getParameter("birthyear");
 	 String birthmonth = request.getParameter("birthmonth");
 	 String birthday = request.getParameter("birthday");
 	 String phone = request.getParameter("phone");

 	String id = null;
    if (request.getParameter("id") != null){
 	  id = request.getParameter("id");
    }



 	if ( id == null ) {
 			PrintWriter script = response.getWriter();
 			script.println("<script>");
 			script.println("alert('유효하지 않은 회원입니다.')");
 			script.println("location.href='login.jsp'");
 			script.println("</script>");
 	}

  UserDAO userDAO = new UserDAO();
  User user = new UserDAO().getUser(id);
 
	  

        
	        int result = userDAO.update(id, name, pwd, email, add1, add2, add3, birthyear, birthmonth, birthday, phone);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원정보 수정에 실패하였습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원 정보가 수정되었습니다.')");
				script.println("location.href='mypage.jsp';");
				script.println("</script>");
		
			}

			

  

 

	    
		

	

	    
	%>




</body>
</html>