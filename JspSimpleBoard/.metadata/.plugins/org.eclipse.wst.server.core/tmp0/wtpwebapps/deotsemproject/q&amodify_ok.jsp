<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
String id = "";
String password= "";

request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String pass = request.getParameter("password");
String title = request.getParameter("title");
String memo = request.getParameter("memo");
int idx = Integer.parseInt(request.getParameter("idx"));

	  Connection conn = null;

		String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
		String dbid = "root";
		String dbpwd ="multi2020";
      
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dburl,dbid,dbpwd);
		Statement stmt = conn.createStatement();

	
		String sql = "SELECT pwd FROM qna_db WHERE num=" + idx; 
		ResultSet rs = stmt.executeQuery(sql);
       
		if(rs.next()){
			password= rs.getString(1);
		}
		
		if(password.equals(pass)){
			sql = "UPDATE qna_db SET title='" + title+ "' ,memo='"+ memo +"' WHERE num=" + idx;
			stmt.executeUpdate(sql);
%> 
        <script language=javascript> 
        alert("글이 수정되었습니다."); 
        location.href="q&a_view.jsp?idx=<%=idx%>"; 
        </script> 
<%    
        rs.close();
        stmt.close(); 
        conn.close(); 
        
		}
	else
	{ %> 
	
	<script language=javascript> 
	alert("비밀번호를 틀렸습니다."); 
	location.href="javascript:history.back()"; 
	</script> 
	
	<% }



%>
<title>Insert title here</title>
</head>
<body>

</body>
</html>