<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<% 
  
   session.invalidate();
   %>
   <script>
   location.href="index.jsp";
   alert("정상적으로 로그아웃이 되었습니다. ");
   </script>
 
</body>
</html>