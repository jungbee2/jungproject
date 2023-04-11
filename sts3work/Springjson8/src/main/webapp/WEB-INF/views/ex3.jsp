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
	<h3 class="alert alert=info">Ex3 예제</h3>
	<br>
	<input type="text" id="input" class="form-control" style="width:200px;">
	<div id="out3"></div>

	<!-- ajax시용하면 새로고침 안해도됨 , 미사용시 새로고침 해야됨 -->
	<script type="text/javascript">
	$("#input").keyup(function(key){
		if( key.keyCode === 13 ){
		$.ajax({
			type: "get", //get, post
			dataType: "json", 
			url: "list3",
			success:function(res){
				
				var s="";
				
				$.each(res,function(i,ele){
					var name=ele.name;
					
					if(name.includes($("#input").val()))
						{
						
						
						s+="<h2>"+ele.name+"</h2><br>";
						s+="<img src='upload/";
						s+=ele.photo+"'>";
						
						}
					
				});
				
				if(s=="")
					{
					s+="<b>검색결과가 없습니다.</b>";
					}
				
				$("#out3").html(s);
			}
		});
		
		}
		
	});
	</script> 
<!-- 	
	<script type="text/javascript">
	$("#input").keyup(function(key){
		if( key.keyCode === 13 ){
		$.ajax({
			type: "get", //get, post
			dataType: "json", 
			url: "list3",
			success:function(res){
				
			
				
				
	$("#out3").empty();
			
				var s="";
				
				$.each(res,function(i,ele){
					
					
					if($("#input").val()==ele.name)
						{
						s="";
						
						s+="<h2>"+ele.name+"</h2><br>";
						s+="<img src='upload/";
						s+=ele.photo+"'>";
						$("#out3").append(s);
						}
				});
				
				if(s==""){
		            
	            	s="";
	              
	              s+="<b>검색결과가 없습니다.</b>";
	              $("#out3").append(s);
	           /*    append-> 있는거를 추가 (empty를 사용), html-> 새로쓰는거 초기화 */
	           }
		
			} 
		
		});
		
		}
		
	});
	</script> -->
</body>
</html>