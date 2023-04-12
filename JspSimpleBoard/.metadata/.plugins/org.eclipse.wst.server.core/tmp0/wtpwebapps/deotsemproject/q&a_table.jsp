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
	
	sql = "create table qna_db(num int(20) not null PRIMARY key AUTO_INCREMENT, pwd varchar(20) , name char(20) not null, title varchar(40) not null, title2 varchar(40) not null, memo varchar(5000) not null, time datetime , photo varchar(500), available Int, hits int , ref int(11), indent int(11), step int(11))";
	stmt.executeUpdate(sql);
	
	stmt.close();
	conn.close();
	

%>
</body>
</html>