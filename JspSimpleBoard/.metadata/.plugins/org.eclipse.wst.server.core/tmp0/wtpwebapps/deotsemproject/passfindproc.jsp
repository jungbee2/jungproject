<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<%
 request.setCharacterEncoding("utf-8");
 String id = request.getParameter("user_id");
 String email = request.getParameter("email");
 
%>

</head>
<%
   
	ResultSet rs = null;
   Connection conn = null;
   String sql = null;
	
	String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
	String dbid = "root";
	String dbpwd ="multi2020";

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dburl,dbid,dbpwd);
	
    sql = "select * from shop_db where id=? and email=?";
 
    PreparedStatement ptsmt = conn.prepareStatement(sql);
    ptsmt.setString(1,id);
    ptsmt.setString(2,email);

    rs = ptsmt.executeQuery();
    
    String pass = null;
    String name = null;
    String msg = null;
    String user_id = null;

    
    

if(rs.next()){
   pass = rs.getString("pwd");
   name = rs.getString("name");
   user_id = rs.getString("id");
   session.setAttribute("pwd", pass); 
} 
 
if( pass == null ) {    
   msg = "존재하지 않은 회원입니다"; 
}	

%>
 
<% if (user_id !=null) {%>

   <div class="Login_Form">
       <div class="title"> 아이디/비밀번호 찾기 결과 </div>
  <form name="findid" action="join.jsp" method="post">
   	<table border=0px width=320px cellspacing = "0" cellpadding="5"> 
      <tr>
   <td width=100 colspan="2"><div class="pass">PASSWORD : </div></td>
   </tr>
   <tr>
   <td width=200 colspan="2"><div class="pass-link"><%=pass%></div></td>
  </tr>
 
  <p>
  <tr>
  <td colspan="2">
  <div class="field"><input type="button" value="로그인" onClick="location.href='login.jsp'" ></div></td>
  </tr>
  <tr>
  <td colspan="2">
   <div class="field"><input type="button" value="아이디 찾기" onClick="location.href='idfind.jsp'" ></div></td>
   </tr>
  
   </table>
 
<% } else {%>
 
       <script>
 
     alert('<%=msg%>');
 
     window.location = 'join.jsp';
     
      </script>
<% }%> 
  

</body>
</html>