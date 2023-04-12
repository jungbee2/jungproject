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
	
	sql = "create table shop_db(id varchar(20) not null, pwd varchar(20) not null, name char(20) not null, email varchar(40) not null, add1 varchar(100) not null, add2 varchar(100) not null, add3 varchar(100) not null , birthyear varchar(10) not null, birthmonth varchar(10) not null, birthday varchar(10) not null, phone varchar(30) not null, primary key(id))";
	stmt.executeUpdate(sql);
	
	stmt.close();
	conn.close();
	

%>
</body>
</html>