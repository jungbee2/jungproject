<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="user.UserDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" /> <!-- user 클래스를 자바빈즈로써 사용 -->
<jsp:setProperty name="user" property="id"  />  
<jsp:setProperty name="user" property="name" /> 
<jsp:setProperty name="user" property="pwd" />
<jsp:setProperty name="user" property="email" />
<jsp:setProperty name="user" property="add1" />
<jsp:setProperty name="user" property="add2" />
<jsp:setProperty name="user" property="add3" />
<jsp:setProperty name="user" property="birthyear" />
<jsp:setProperty name="user" property="birthmonth" />
<jsp:setProperty name="user" property="birthday" />
<jsp:setProperty name="user" property="phone" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>

 	<%
 
 
	

String id = null;
if (session.getAttribute(id) != null) {
	  id = (String) session.getAttribute("id");
}

	if ( id != null ) {
		
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href='index.jsp'");
		script.println("</script>");
		
		
	}
	//이미 로그인이 되어있는 사람이 회원가입을 하는 것을 막음 
	
    UserDAO userDAO = new UserDAO();
    int result = userDAO.join(user);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('동일한 아이디가 존재합니다. ')");
			script.println("location.href='join.jsp'");
			script.println("</script>");
		}
		else{
				session.setAttribute("id", user.getId());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('로그인에 성공하셨습니다. 환영합니다 ! ')");
				script.println("location.href='index.jsp'");
				script.println("</script>");
			}
	
	    
	    
	%>




</body>
</html>