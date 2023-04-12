<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="css/aos.css">
    <link rel="stylesheet" type="text/css" href="css/shopbrand.css">
    <link rel="stylesheet" type="text/css" href="css/notice.css">
    <link rel="stylesheet" type="text/css" href="css/board.css">
    <link rel="stylesheet" type="text/css" href="css/loginform.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">

    <link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/return.js"></script>
    <script type="text/javascript" src="js/jq.js"></script>
    <script type="text/javascript" src="js/aos.js"></script>
    <script type="text/javascript" src="js/jquery.fullPage.js"></script>
    <script type="text/javascript" src="js/rightbanner.js"></script>
    <script type="text/javascript" src="js/fbevents.js"></script>
    <script type="text/javascript" src="js/scrolloverflow.js"></script>
    <script type="text/javascript" src="js/slider.js"></script>

    <script type="text/javascript" src="js/header.1.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/footer.js"></script>
<%

     int idx = Integer.parseInt(request.getParameter("idx"));
     String name = "";
     String title = "";
     String memo = "";
     String time = "";
     int hit = 0;


     Connection conn = null;

     String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
     String dbid = "root";
     String dbpwd ="multi2020";

     Class.forName("com.mysql.jdbc.Driver");
     conn = DriverManager.getConnection(dburl,dbid,dbpwd);
     Statement stmt = conn.createStatement();
     
     String sql = "SELECT name, title, memo, time, hits FROM notice_db WHERE num=" + idx;
     PreparedStatement pstmt = conn.prepareStatement(sql);
     ResultSet rs = pstmt.executeQuery();
     
     if (rs.next()){
    	 
    	 name =  rs.getString(1);
    	 title =  rs.getString(2);
    	 memo = rs.getString(3);
    	 time = rs.getString(4);
    	 hit = rs.getInt(5);
    	 
    	 hit++;
     }


%>
<title>Insert title here</title>
</head>
<body>

<div class="content_row_1">
  <table class="board_view">
     <caption>Notice</caption>
  <tr>
 <td><%=title%></td>
 <td></td>
 </tr>
 
 <tr>
 <td ><%=name %> <%=time %> </td>
 </tr>
 <tr> 
  
  <td><%=memo %></td>
 
 </tr>
 <% 
   sql = "UPDATE notice_db SET hits = " + hit + " where num= " + idx;
   stmt.executeUpdate(sql); 
   rs.close(); 
   stmt.close(); 
   conn.close(); 
 %>
 <tr>
 <td>
     
	<input type=button value="목록" OnClick="window.location='notice_list.jsp'">
	<input type=button value="수정" OnClick="window.location='notice_modify.jsp?idx=<%=idx%>'">
	<input type=button value="답글" OnClick="window.location='notice_reply.jsp?idx=<%=idx%>'">
	<input type=button value="삭제" OnClick="window.location='notice_delete.jsp?idx=<%=idx%>'">
</td>
</tr>
</table>
</div>


</body>
</html>