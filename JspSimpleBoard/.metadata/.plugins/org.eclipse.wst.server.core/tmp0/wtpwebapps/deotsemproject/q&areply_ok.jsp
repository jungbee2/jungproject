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
   String pass = ""; 
   String name = request.getParameter("name"); 
   String password = request.getParameter("password"); 
   String title = request.getParameter("title"); 
   String memo = request.getParameter("memo"); 
   int idx = Integer.parseInt(request.getParameter("idx"));

   int ref = 0;
   int indent = 0;
   int step = 0;
   Connection conn = null;

   String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
   String dbid = "root";
   String dbpwd ="multi2020";

   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(dburl,dbid,dbpwd);
   Statement stmt = conn.createStatement();
   
   String sql = "SELECT ref, indent, step FROM qna_db WHERE num=" + idx;
   ResultSet rs =  stmt.executeQuery(sql);
   
   if(rs.next()) {
	   
	   ref = rs.getInt(1);
	   indent = rs.getInt(2);
	   step = rs.getInt(3);
   }
   
   sql = "UPDATE qna_db SET step=step+1 where ref="+ref+" and step>" +step;

   //Update문을 이용해서 ref값이 불러온 ref와 같고 step이 불러온 step값보다 큰 자료들의 step을 +1 시키게 됩니다.

   stmt.executeUpdate(sql);
   
   sql = "INSERT INTO qna_db(name, pwd, title, memo, ref, indent, step)" + "value(?,?,?,?,?,?,?)";
   
   PreparedStatement pstmt = conn.prepareStatement(sql); 
       pstmt.setString(1, name); 
       pstmt.setString(2, password); 
       pstmt.setString(3, title); 
       pstmt.setString(4, memo); 
       pstmt.setInt(5, ref); 
       pstmt.setInt(6, indent+1); 
       pstmt.setInt(7, step+1); 
       
       
       pstmt.execute(); 
       rs.close(); 
       stmt.close(); 
       pstmt.close(); 
       conn.close();
		   
   
   %>
   
   <script language=javascript> 
    
   alert("입력한 글을 저장하였습니다."); 
   location.href="q&a_list.jsp";  
   </script>

<title>Insert title here</title>
</head>
<body>

</body>
</html>