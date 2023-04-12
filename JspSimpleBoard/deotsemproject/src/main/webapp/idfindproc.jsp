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
 String name = request.getParameter("find_name");
 String email = request.getParameter("find_email");
 
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
	
    sql = "select * from shop_db where name=? and email=?";
 
    PreparedStatement ptsmt = conn.prepareStatement(sql);
    ptsmt.setString(1,name);
    ptsmt.setString(2,email);

    rs = ptsmt.executeQuery();
    
    String id = null;
    String msg = null;
    

if(rs.next()){
   id = rs.getString("id");
   name = rs.getString("name");
   // id 찾기를 호출한 페이지에 찾은 아이디를 보여주기 위한 용도 
   session.setAttribute("id", id); 
} 
 
if( id == null ) {    
   msg = "가입되지 않은 회원입니다"; 
}

%>
 
<% if (id !=null) {%>

   <div class="Login_Form">
			<h1 class="findid-complete">아이디/비밀번호 찾기 결과</h1>
  <form name="findid" action="login.jsp" method="post">
   	<table border=0px width=320px cellspacing = "0" cellpadding="5"> 
      <tr>
   <td colspan="2" width=100><div class="id">ID : </div></td>
   </tr>
   <tr>
   <td colspan="2" width=200><div class="id-link"><%=id%></div></td>
  </tr>
  
  
							
  <tr>
  <td colspan="2">
  <div class="field"><input type="button" value="로그인" onClick="location.href='login.jsp'" ></div></td>
  </tr>
  <tr>
  <td colspan="2">
   <div class="field"><input type="button" value="비밀번호 찾기" onClick="location.href='findidpwd.jsp'" ></div></td>
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
</html>