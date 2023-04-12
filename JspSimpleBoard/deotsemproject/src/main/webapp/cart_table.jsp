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
	
	sql = "create table cart_db(cart_idx int(20) not null PRIMARY key AUTO_INCREMENT, product_idx int not null, quantity int not null , price int not null , product_name char(20) not null )";
	stmt.executeUpdate(sql);
	
	stmt.close();
	conn.close();
	

%>
</body>
</html>