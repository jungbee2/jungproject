<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
      request.setCharacterEncoding("UTF-8");
      String id = "";
      String pwd = "";
      String password = null;
      int idx = Integer.parseInt(request.getParameter("idx")); 
      String passw = request.getParameter("password");

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
				password = rs.getString(1);
		 }
		 
		 if(password.equals(passw)) {
			   			
			sql = "DELETE FROM qna_db WHERE num=" + idx;	
			stmt.executeUpdate(sql);	 
%>
			<script language=javascript>
				self.window.alert("해당 글을 삭제하였습니다.");
				location.href="q&a_list.jsp";
			</script>

<%
		rs.close();
		stmt.close();
		conn.close();
		
		 } else { 
%>
			<script language=javascript>
			 self.window.alert("비밀번호를 틀렸습니다.");
				location.href="javascript:history.back()";
			</script>
<% }
		 %>





<title>Insert title here</title>
</head>
<body>

</body>
</html>