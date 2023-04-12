<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link
        href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
        rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
  <h2>여러 데이타 전송하기</h2>
  <form action="ex5_action.jsp" method="post">
      <table class="table table-bordered" style="width: 300px;">
         <tr>
           <th bgcolor="#ffa" width="100">이름</th>
           <td>
           <input type="text" name="name" size="5" placeholder="이름"
           required="required">
           </td>
         </tr>
         
         <tr>
           <th bgcolor="#ffa" width="100">비밀번호</th>
           <td>
           <input type="password" name="pass" size="5" placeholder="비밀번호"
           required="required">
           </td>
         </tr>
         
         <tr>
           <th bgcolor="#ffa" width="100">운전면허</th>
           <td>
           <input type="checkbox" name="license">운전면허여부
           </td>
         </tr>
         
         <tr>
           <td  colspan="2" align="center">
              <input type="submit" value="서버전송">
              <input type="reset" value="초기화">
           </td>
         </tr>
      </table>
  </form>
</body>
</html>