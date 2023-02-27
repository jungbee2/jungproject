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
<style type="text/css">

div.box1{
float:left;
margin-left:20px;
margin-top:20px;

}
.box2{
	width:50px;
	height:50px;
	border-radius: 100%;
}
</style>
<script type="text/javascript">
$(function(){
	
	
	$("#btn1").click(function(){
		var s="<img src='../image/01.png'>";
		s+=$("#show").html(s);
	});
	
	$("#btn2").click(function(){
		$.ajax({
			type:"get",
			url:"jshopToJson.jsp",
			dataType:"json",
			success:function(res){
				
				var s="";
				
				$.each(res,function(i,item){
					
					s+="<div class='alert alert-info box1' style='width:300px;'>";
					s+="index: "+i+"<br>";
					s+="num: "+item.num+"<br>";
					s+="sangpum: "+item.sangpum+ "<br>";
					s+="color: "+item.color+"<br>"+"<div class='box2' style='background-color:"+item.color+"'></div>";
					s+="price: "+item.price+"<br>";
					s+="<img src='"+item.imagename+"'width='100'>";
					s+="</div><br>";
					
				})
				
				$("#show").html(s);
			}
				
		
		})
	
	});
	
	$("#btn3").click(function(){
		
		$.ajax({
			
			type:"get",
			url:"sboardToJson.jsp",
			dataType:"json",
			success:function(data){
				
				var s="<table class='table table-bordered' style='width:900px;'>";
				s+="<caption><b>sboardToJson</b></caption>";
				s+="<tr bgcolor='lightpink'>";
				s+="<th>번호</th><th>글쓴이</th><th>제목</th><th>내용</th><th>이미지</th><th>비밀번호</th><th>조회수</th><th>작성일</th>";
				s+="</tr>";
				
				$.each(data, function(i,elt){
					
					s+="<tr align='center'>";
					s+="<td>"+elt.num+"</td>";
					s+="<td>"+elt.writer+"</td>";
					s+="<td>"+elt.subject+"</td>";
					s+="<td>"+elt.content+"</td>";
					s+="<td><img src='../image/"+elt.imgname+"'width='50'></td>";
					s+="<td>"+elt.pass+"</td>";
					s+="<td>"+elt.readcount+"</td>";
					s+="<td>"+elt.writeday+"</td>";
					s+="</tr>";
					//s+="<td><img src='"+elt.imagename+"'></td>";
				});
				
				s+="</table>";
				s+=$("#show").html(s);
				
			}
		
		})

	});
	
});
</script>
</head>

<body>
	<button type="button" class="btn btn-info" id="btn1">Home</button>
	<button type="button" class="btn btn-danger" id="btn2">Jshop</button>
	<button type="button" class="btn btn-success" id="btn3">SimpleBoard</button>

	<div id="show"></div>
</body>
</html>