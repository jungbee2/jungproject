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
<!-- include: 다른페이지의 결과페이지를 현재파일에 포함
     forward: 다른파일로 이동 -->
  <h2>다른 폴더의 파일 include하기</h2>
  <h4>오전 예제 5</h4>
  <jsp:include page="../day0214/listAddEx5.jsp"/>
  <hr>
  <h4>오전 예제 7</h4>
  <jsp:include page="../day0214/quizImgArrEx7.jsp"></jsp:include>
</body>
</html>