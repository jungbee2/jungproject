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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<a>
	<img alt="" src="${root }/image/title.png" style=" margin-left: 220px; width:300px;">
<!-- 	<b>SpringBoot+MyBatis+Tiles</b> -->
</a>

	<div class="container">
		<!-- Trigger the modal with a button -->
		
		<c:if test="${sessionScope.loginok==null }">
		<button type="button" class="btn btn-default btn-sm" data-toggle="modal"
			data-target="#myModal" style="float: right; margin-right: 75px;">로그인</button>
		</c:if>
		
		
		<c:if test="${sessionScope.loginok!=null }">
		<b style="float: left; margin-left: 860px; font-size:12px;">${sessionScope.myid }님 로그인 중</b>
		<button type="button" class="btn btn-default btn-sm" id="btnlogout"
		 style="float: right; margin-right: 75px;" >로그아웃</button>
		</c:if>
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content" style="width: 400px; margin-left: 20%;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title"
							style="text-align: center; font-size: 30px; padding: 20px 0 10px 0; font-weight: bold;">로그인</h4>
						<hr>
					</div>

					<div class="modal-body">
						<form action="loginprocess" method="post">
							<div style="width: 300px; margin: 0 auto; padding: 20px 0;">
								<div style="padding: 10px 0;">
									<input type="text" class="form-control" id="loginid"
										style="width: 300px;" placeholder="아이디입력" required="required"
										autofocus="autofocus" value="${sessionScope.saveok=null?"":sessionScope.myid }">
								</div>
								<!--\"  -->
								<input type="password" id="loginpass" class="form-control"
									style="width: 300px;" placeholder="비밀번호입력" required="required"
									autofocus="autofocus"> <br> 
							<input type="checkbox"
									name="cbsave" ${sessionScope.saveok==null?"":"checked"}>아이디저장
								&nbsp;&nbsp;
							</div>
						</form>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal"
							id="btnloginok" style="margin-left: 100px;">로그인</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
					
				</div>
			</div>
		</div>
	</div>


	<!-- 로그인에 대한 ajax 스크립트 처리  -->
	<script type="text/javascript">
		//팝업창에 있는 로그인 버튼
		$("#btnloginok").click(function() {

			//아이디 비번 읽기
			var id=$("#loginid").val();
			var pass=$("#loginpass").val();
			var root='${root}';
			console.log("root"+root);
			
			$.ajax({
				type:"get",
				dataType:"json",
				url: root+"/member/login",
				data: {"id":id, "pass":pass},
				success:function(res){
					
					if(res.result=='fail'){
						alert("아이디 혹은 비번이 틀렸습니다.");
					}else{
						location.reload();
					}
					
				}
			});
		});
		
		
		//로그아웃
		$("#btnlogout").click(function(){
			
			var root='${root}';
			
			$.ajax({
				type:"get",
				dataType:"html",
				url:root+"/member/logout",
				success:function(res){
					location.reload();
				}
			});
		});
		
	</script>


</body>
</html>