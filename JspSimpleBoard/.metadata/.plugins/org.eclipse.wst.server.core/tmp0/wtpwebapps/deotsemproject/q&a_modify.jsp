<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<%

   request.setCharacterEncoding("UTF-8");
   String name = ""; 
   String password = ""; 
   String title = ""; 
   String memo = ""; 
   
   int idx = Integer.parseInt(request.getParameter("idx"));


   Connection conn = null;

   String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
   String dbid = "root";
   String dbpwd ="multi2020";

   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(dburl,dbid,dbpwd);
   Statement stmt = conn.createStatement();
   
   String sql = "SELECT name, pwd, title, memo FROM qna_db WHERE num=" + idx;
   ResultSet rs = stmt.executeQuery(sql);
   
   if(rs.next()){
	   
	   name = rs.getString(1);
	   password =  rs.getString(2);
	   title = rs.getString(3);
	   memo = rs.getString(4);
   }
   
   rs.close();
   stmt.close();
   conn.close();

%>
<script language = "javascript">  // 자바 스크립트 시작

function modifyCheck()
  {
   var form = document.modifyform;
   
   if( !form.password.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.password.focus();
    return;
   }
   
  if( !form.title.value )
   {
    alert( "제목을 적어주세요" );
    form.title.focus();
    return;
   }
 
  if( !form.memo.value )
   {
    alert( "내용을 적어주세요" );
    form.memo.focus();
    return;
   }  
 		form.submit();
  } 
</script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <caption>Notice</caption>
  <form name="modifyform" method=post action="q&amodify_ok.jsp?idx=<%=idx%>">
   <table>
     <tr>
      <td>&nbsp;</td>
         <td align="center">제목</td>
      <td><div class="qna_title"><select name="title" value="<%=title%>">
		    <option value="상품문의" <% if(title.equals("상품문의")) { %>selected <%} %> > 상품문의</option>
			<option value="교환문의" <% if(title.equals("교환문의")) { %>selected <%} %>>교환문의</option>
			<option value="환불문의" <% if(title.equals("환불문의")) { %>selected <%} %>>환불문의</option>
			<option value="기타문의" <% if(title.equals("기타문의")) { %>selected <%} %>>기타문의</option>
			<option value="배송문의" <% if(title.equals("배송문의")) { %>selected <%} %>>배송문의</option>      
        </select></div></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">이름</td>
      <td><input type="hidden" name="name" size="50" maxlength="50" value="<%=name%>"></td> <!-- 히든인 이유 수정X -->
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>
      <td><input type="password" name="password" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="memo" cols="50" rows="13"><%=memo %></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr align="center">
      <td>&nbsp;</td> 
      <td colspan="2"><input type=button value="수정" OnClick="javascript:modifyCheck();">
       <input type=button value="취소" OnClick="javascript:history.back(-1)">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</form>


</body>
</html>