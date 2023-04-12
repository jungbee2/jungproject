	<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
 <% 
 String pwd = request.getParameter("pwd");
 
 Connection conn = null;
 Statement stmt = null;
 PreparedStatement pst = null;
 String sql = null;
	
	String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
	String dbid = "root";
	String dbpwd ="multi2020";

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dburl,dbid,dbpwd);
	
  sql = "delete from shop_db where pwd=?";
  pst = conn.prepareStatement(sql);
  pst.setString(1,pwd);
  pst.executeUpdate();
  pst.close();
  conn.close();

 %>
 <script>
 alert("회원탈퇴가 완료되었습니다.");
 location.href="login.jsp";

 </script>

</body>
</html>