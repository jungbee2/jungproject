<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script language = "javascript"> // 자바 스크립트 시작

function replyCheck()
  {
   var form = document.replyform;
   
   if( !form.name.value )   // form 에 있는 name 값이 없을 때
   {
    alert( "이름을 적어주세요" ); // 경고창 띄움
    form.name.focus();   // form 에 있는 name 위치로 이동
    return;
   }
   
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
  
  String sql = "SELECT title from qna_db WHERE num=" + idx;
  ResultSet rs = stmt.executeQuery(sql);
  
  
  if(rs.next()){ 
	  title = rs.getString(1);
	  } 
  rs.close(); 
  stmt.close();
  conn.close(); 



%>


<title>Insert title here</title>
</head>
<body>


    <caption>Q&A</caption>
  <form name="replyform" method=post action="q&areply_ok.jsp?idx=<%=idx%>">
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input type="text" name="title" size="50" maxlength="100" ></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center">이름</td>
      <td><input type="text" name="name" size="50" maxlength="50" value="덧셈"></td>
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
      <td><textarea name="memo" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록" onClick="replyCheck()">
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