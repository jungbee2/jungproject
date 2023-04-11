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
	<h3 class="alert alert=info">Ex2 예제</h3>
	<br>
	<button type="button" id="btn2" class="btn btn-warning">list2 json배열데이터 출력하기</button>
	<div id="out2"></div>

	<!-- ajax시용하면 새로고침 안해도됨 , 미사용시 새로고침 해야됨 -->
	<script type="text/javascript">
	$("#btn2").click(function(){
		$.ajax({
			type: "get", //get, post
			dataType: "json", 
			url: "list2",
			success:function(res){
				$("#out2").empty();
			
				$.each(res,function(i,ele){
					
					var s="";
					
					s+="<h2>"+ele.name+"</h2><br>";
					s+="<img src='upload/";
					s+=ele.photo+"'>";
					
					$("#out2").append(s);
				});
			}
		});
		
		$("#out2").toggle();
		
	});
	</script>
</body>
</html>