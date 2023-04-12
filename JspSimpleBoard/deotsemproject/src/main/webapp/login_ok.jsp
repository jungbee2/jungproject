<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" /> <!-- user 클래스를 자바빈즈로써 사용 -->
<jsp:setProperty name="user" property="id"  />  <!-- 로그인 페이지에서 받아온 사용자 아이디를 userid에 저장 -->
<jsp:setProperty name="user" property="pwd" /> <!-- 로그인 페이지에서 받아온 사용자 pwd를 userpassword에 저장 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
    	<%
    	
    	  request.setCharacterEncoding("UTF-8");
    	

    	  String userid = request.getParameter("id");
          String id = null;
          
 
    	//이미 로그인이 되어있는 사람이 또 다시 로그인하는 것을 막음 
		UserDAO userDAO = new UserDAO();
    	int result = userDAO.login(user.getId(), user.getPwd());
		if(result == 1){
			session.setAttribute("id", user.getId());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인에 성공하셨습니다. 환영합니다 ! ')");
			script.println("location.href='index.jsp'");
			session.setAttribute("id" , id);
			script.println("</script>");
		}
		else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('올바르지 않은 패스워드입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('동일한 ID가 존재하지 않습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류입니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if(result == 2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인에 성공하셨습니다. 관리자 페이지로 이동합니다.')");
			script.println("location.href='admin_mypage.jsp'");
			script.println("</script>");
		}
	%>
</body>
</html>