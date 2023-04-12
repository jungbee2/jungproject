<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style>
button{cursor:pointer}
</style>
</head>
<body>
<%

request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");  
String pwd = (String)session.getAttribute("pwd");  
  

    Connection conn = null;

	PreparedStatement pstmt = null;

	ResultSet rs = null;
	
	
	String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
	String dbid = "root";
	String dbpwd ="multi2020";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dburl,dbid,dbpwd);
	
	String sql = "SELECT * FROM shop_db WHERE id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    String name = null;
	rs = pstmt.executeQuery();

	
 
	if (rs.next()) {
		
		  name = rs.getString("name");
	}
      %>
      

<div id="join-complete">
						<div class="imgWrap title-img">

						</div>
						<h1 class="join-complete">회원가입 완료</h1>
						<div class="complete-box">
							<dl>
								<dt><%=name %>의 회원가입이 성공적으로 이루어졌습니다.</dt>
								<dd>
									<p>
										Deotsem과 함께 즐거운 쇼핑 되세요!<br />										
																				<%=name %>의 축하적립금은 <span class="join-point">2000원</span> 입니다.<br />
																													</p>
								</dd>
							</dl>
							
							<div class="btnArea join-footer">
								<div class="center">									
								<a href="" class="cbtn form">메인화면</a>
								</div>
					</div>



</body>
</html>