<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>첫번째 DB 연결</h3>
<%
//jdbc 드라이버 연결
Class.forName("com.mysql.jdbc.Driver");
out.println("MySQL JDBC 드라이버 로딩완료<br>");
//데이터베이스 연결
Connection conn=null;
String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
String dbid = "root";
String dbpwd = "multi2020";


conn = DriverManager.getConnection(dburl,dbid,dbpwd);

if(conn != null) {
	out.println("webdb DB에 연결되었습니다.!!<br>");
	conn.close();
	out.println("webdb DB에 연결을 끊었습니다.!!<br>");
}
else {
	out.println("webdb DB로 연결할 수 없습니다.!!<br>");
}


%>
</body>
</html>