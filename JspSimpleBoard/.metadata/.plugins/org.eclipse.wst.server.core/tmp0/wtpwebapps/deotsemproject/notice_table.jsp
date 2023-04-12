<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>table 생성</title>
</head>
<body>
<%
//try {
	Connection conn = null;
	Statement stmt = null;
	String sql = null;
	
	String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
	String dbid = "root";
	String dbpwd ="multi2020";

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dburl,dbid,dbpwd);
	stmt = conn.createStatement();
	
	sql = "create table notice_db(num int(20) not null PRIMARY key AUTO_INCREMENT, pwd varchar(20) not null, name char(20) not null, title varchar(40) not null, memo varchar(2000) not null, time datetime NOT NULL DEFAULT NOW(), hits int(11) , ref int(11), indent int(11), step int(11))";
	stmt.executeUpdate(sql);
	
	stmt.close();
	conn.close();
	

%>
</body>
</html>