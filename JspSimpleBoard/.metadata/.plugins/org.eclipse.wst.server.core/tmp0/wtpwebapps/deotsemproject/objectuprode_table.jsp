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
	
	sql = "create table uprode_db(num int(100) not null PRIMARY key AUTO_INCREMENT, category varchar(20) , photo varchar(500) not null, name varchar(20) not null, price int not null, exp1 varchar(500) not null, exp2 varchar(500) , volume int not null , time datetime)";
	stmt.executeUpdate(sql);
	
	stmt.close();
	conn.close();
	

%>
</body>
</html>