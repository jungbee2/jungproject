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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

</head>

<body>

	<h2>jqery 의 ajax함수 이용해서 student(json)_db읽어오기</h2>
	<button type="button" class="btn btn-success" id="btn1">studenttojson 읽기</button>
	
		<h2>jqery 의 ajax함수 이용해서 food(xml)_db읽어오기</h2>
	<button type="button" class="btn btn-success" id="btn2">foodtoxml 읽기</button>

	<div id="show"></div>

	<script type="text/javascript">
	
	$("#btn1").click(function() {
		
		$.ajax({
			type:"get",
			url:"studentToJson.jsp",
			dataType:"json",
			success:function(res){
				
				var s="";
				
				$.each(res,function(i,item){
					
					s+="<div class='alert alert-info' style='width:300px;'>";
					s+="index: "+i+"<br>";
					s+="num: "+item.num+"<br>";
					s+="stuname: "+item.stuname+ "<br>";
					s+="java: "+item.java+"<br>";
					s+="ajax: "+item.ajax+"<br>";
					s+="<img src='"+item.stuphoto+"'width='100'>";
					s+="</div><br>";
					
				})
				
				$("#show").html(s);
			}
				
		
		})
	});
	
	
	$("#btn2").click(function() {
		
		
		$.ajax({
			type: "get",
			url:"foodToxml.jsp",
			dataType:"xml",
			success:function(res){
				
				var s="";
				$(res).find("food").each(function(i,ele){
					
					var n=$(ele);
					
					s+="<div class='alert alert-info' style='width: 400px;'>";
					s+="No: "+n.attr("num")+",";
					s+="상품명: "+n.find("foodname").text()+"<br>";
					s+="가격: "+n.find("price").text()+"<br>";
					s+="수량: "+n.find("cnt").text()+"<br>";
					s+="사진: <img src='"+n.find("foodphoto").text()+"' style='width:200px;'><br>";
					s+="</div>";
				})
				
				$("#show").html(s);
			}
		})
	});

		
	</script>
</body>
</html>