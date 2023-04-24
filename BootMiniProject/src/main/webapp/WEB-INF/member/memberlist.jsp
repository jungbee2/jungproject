<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

<!--t_ver  -->
<!--  <script type="text/javascript">

		$(function() {

			//전체선택하면 체크박스 선택 해제
			$("#allcheck").click(function() {

				//체크값을 얻는다
				var chk = $(this).is(":checked");
				console.log(chk);

				//전체 체크 값을 아래의 체크에 일괄전달
				$(".del").prop("checked", chk);

			});

			$("#btnmemberdel").click(function() {

				//체크한 상품 갯수 구하기
				var cnt = $(".del:checked").length;
				//alert(cnt);

				if (cnt == 0) {
					alert("먼저 삭제번호를 선택해주세요");
					return; //종료
				}
				

				$(".del:checked").each(function(i, elt) {

					var num = $(this).attr("num");
					console.log(num); //선택한 num만 나오는지 확인할 것

					//삭제 ajax
					$.ajax({
						type : "get",
						dataType : "html",
						url : "btnmemberdel",
						data : {
							"num" : num
						},
						success : function() {

							alert("삭제되었습니다.");

							//새로고침
							location.reload();

						}
					});

				});				
				
			});
		});
	</script>  -->
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<c:if test="${sessionScope.loginok!=null and sessionScope.myid=='admin' }">
<h2 class="alert alert-info">총 ${count }명의 회원이 있습니다.</h2>
<br>
<table class="table table-bordered" style="width: 1000px;">
	<caption>전체 회원명단</caption>
		<tr style="background-color: #fcfcf2">
			<th style="width: 50px;">번호</th>
			<th style="width: 150px;">이름</th>
			<th style="width: 100px;">아이디</th>
			<th style="width: 120px;">핸드폰</th>
			<th style="width: 350px;">주소</th>
			<th style="width: 200px;">이메일</th>
			<th style="width: 30px;">
			<input type="checkbox" id="allcheck"></th>
		</tr>
		
		<c:forEach var="dto" items="${list }" varStatus="i">
			<tr >
				<td>${i.count }</td>
				<td><img src="../photo/${dto.photo }" alt="프로필" style="width:30px; height:30px; border-radius: 10px; margin:0 10px;">${dto.name}</td>
				<td>${dto.id }</td>
				<td>${dto.hp }</td>
				<td>${dto.addr }</td>
				<td>${dto.email }</td>
				<c:if test="${dto.id!='admin'}">
				<td><input type="checkbox" class="del" name="chk"  num="${dto.num }"></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	
	<button type="button" class="btn btn-danger" 
	style="margin-left:920px;" id="btnmemberdel">DELETE</button>
	
</c:if>

<!-- btnmemberdel ajax 스크립트 처리  -->
	 <script type="text/javascript">
		
		//로그아웃
		$("#btnmemberdel").click(function(){
			
			$(".del:checked").each(function(i,ele){
				
				var num=$(ele).attr("num");
				//console.log(num);
				/* var root='${root}'; */
				// 경로가 같아서 지울 수 있다.
				
				$.ajax({
					type:"get",
					dataType:"html",
					url:"btnmemberdel", //root+"/member/dtnmemberdel"
					data:{"num":num},
					success:function(){
						location.reload();
					}
				});
			});
			
		});
		
	</script> 
	
 	<script type="text/javascript">
		$(document).ready(function() {
			$("#allcheck").click(function() {
				if($("#allcheck").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#allcheck").prop("checked", false);
				else $("#allcheck").prop("checked", true); 
			});
		});
	</script> 
</body>
</html>