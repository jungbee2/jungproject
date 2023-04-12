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
  <h3>폼태그 문제</h3>
  <form action="ex7_action.jsp" method="post">
  	<table class="table table-striped" style="width: 400px;">
  	   <tr>
  	      <th width="100" bgcolor="orange">상품명</th>
  	      <td>
  	         <input type="text" name="sang" class="form-control" required="required">
  	      </td>
  	   </tr>
  	   
  	   <tr>
  	     <th width="100" bgcolor="orange">색상</th>
  	       <td>
  	          <input type="checkbox" name="scolor" value="orange">오렌지
  	          <input type="checkbox" name="scolor" value="pink">핑크
  	          <input type="checkbox" name="scolor" value="gray">회색
  	          <input type="checkbox" name="scolor" value="blue">파랑
  	          <input type="checkbox" name="scolor" value="black" checked="checked">검정
  	       </td>
  	   </tr>
  	   
  	   <tr>
  	      <th width="100" bgcolor="orange">사이즈</th>
  	        <td>
  	           <input type="radio" name="ssize" value="90">90&nbsp;
  	           <input type="radio" name="ssize" value="95">95&nbsp;
  	           <input type="radio" name="ssize" value="100" checked="checked">100&nbsp;
  	           <input type="radio" name="ssize" value="105">105&nbsp;
  	           <input type="radio" name="ssize" value="110">110&nbsp;
  	        </td>
  	   </tr>
  	   
  	   <tr>
  	     <th width="100" bgcolor="orange">추가상품</th>
  	       <td>
  	         <select name="schuga" class="form-control">
  	            <option value="양말">양말</option>
  	            <option value="끈나시">끈나시</option>
  	            <option value="요가매트">요가매트</option>
  	            <option value="아령">아령</option>
  	         </select>
  	       </td>
  	   </tr>
  	   
  	   <tr>
  	      <td colspan="2" align="center">
  	          <button type="submit" class="btn btn-info btn-lg">서버로전송</button>
  	      </td>
  	   </tr>
  	</table>
  </form>
</body>
</html>