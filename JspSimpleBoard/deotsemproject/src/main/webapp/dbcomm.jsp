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
<h3>ù��° DB ����</h3>
<%
//jdbc ����̹� ����
Class.forName("com.mysql.jdbc.Driver");
out.println("MySQL JDBC ����̹� �ε��Ϸ�<br>");
//�����ͺ��̽� ����
Connection conn=null;
String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
String dbid = "root";
String dbpwd = "multi2020";


conn = DriverManager.getConnection(dburl,dbid,dbpwd);

if(conn != null) {
	out.println("webdb DB�� ����Ǿ����ϴ�.!!<br>");
	conn.close();
	out.println("webdb DB�� ������ �������ϴ�.!!<br>");
}
else {
	out.println("webdb DB�� ������ �� �����ϴ�.!!<br>");
}


%>
</body>
</html>