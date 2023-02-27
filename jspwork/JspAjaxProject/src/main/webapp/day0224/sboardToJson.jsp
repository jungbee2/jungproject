<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	DbConnect db = new DbConnect();
	Connection conn= db.getConnection();
	Statement stmt= null;
	ResultSet rs= null;

	String sql="select * from simpleboard order by num";
	
	try{
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		
		JSONArray arr = new JSONArray();
		
		while(rs.next())
		{
			int num=rs.getInt("num");
			String writer=rs.getString("writer");
			String subject=rs.getString("subject");
			String content=rs.getString("content");
			String imgname=rs.getString("imgname");
			String pass=rs.getString("pass");
			int readcount=rs.getInt("readcount");
			String writeday=rs.getString("writeday");
			
			JSONObject ob= new JSONObject();
			
			ob.put("num",num);
			ob.put("writer",writer);
			ob.put("subject",subject);
			ob.put("content",content);
			ob.put("imgname",imgname);
			ob.put("pass",pass);
			ob.put("readcount",readcount);
			ob.put("writeday",writeday);
			
			//array에추가
			arr.add(ob);
		}%>
		
		<%=arr.toString()%>

	<%}catch(SQLException e){
		
	}finally{
		db.dbClose(rs, stmt, conn);
	}
%>