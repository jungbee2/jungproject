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
	<div style="width: 800px; text-align:right; margin: 50px 50px; font-size:2em;">
		<span class="glyphicon glyphicon-th-large list1" style="cursor:pointer;"></span>
		<span class="glyphicon glyphicon-th-list list2" style="cursor:pointer;"></span>
	</div>
	
	<div class="restlist" style="margin-top:50px; margin-left:50px;">
	</div>


	<script type="text/javascript">
		//첫번째 아이콘
		$("span.list1").click(function() {

			$("span.list1").css("color", "red");
			$("span.list2").css("color", "black");

			/* 		$(".restlist").html("출력1"); */
			
			$.ajax({
				type:"get",
				dataType:"json",
				url:"list1",
				success:function(res){
					
					var tag="";
					
					tag+="<table class='table' style='width:800px;'>";
					
					$.each(res,function(i,ele){
						
						tag+="<tr height='110'><td>";
						tag+="<h3><b>"+ele.subject+"</b></h3>";
						tag+=ele.content+"<br>";
						
						if(ele.photo!='no'){
							tag+="<span style='float:right;'>";
							tag+="<img width='100' height='100' src='../photo/"+ele.photo+"'><br>";
							tag+="</span>";
						}
						tag+="작성자: "+ele.writer;
						tag+="</td></tr>";
					});
					
					tag+="</table>";
					$(".restlist").html(tag);
				}
			});
		});

		//두번째 아이콘
		$("span.list2").click(function() {

			$("span.list2").css("color", "red");
			$("span.list1").css("color", "black");
			/* 		$(".restlist").html("출력1"); */
		});
	</script>
</body>
</html>