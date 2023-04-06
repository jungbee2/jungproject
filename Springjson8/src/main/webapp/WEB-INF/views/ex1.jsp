<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <!-- 추가할부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
	<h3 class="alert alert=info">Ex1 예제</h3>
	<br>
	<button type="button" id="btn1" class="btn btn-info">list1 json데이터 출력하기</button>
	<div id="out1"></div>

	<script type="text/javascript">
		$("#btn1").click(function(){
			$.ajax({
				type:"get",
				dataType:"json",
				url:"list1",
				success:function(res){
				
					$("#out1").empty();
					$("#out1").append("이름: "+ res.name+"<br>");
					$("#out1").append("핸드폰: "+ res.hp+"<br>");
					$("#out1").append("주소: "+ res.addr+"<br>");
				}
			});
			
			$("#out1").toggle();
		});
	</script>
</body>
</html>