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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">

.answer{
	padding:30px;
}
.name {
	padding:10px;
}

.content{
	padding:10px;
}
.day{
	color:gray;
	margin-left:50px;
	font-size: 0.9em;
}

.amod , .adel{
	float:right;
	cursor:pointer;
	font-size:0.7em;
	padding: 5px;
	color:gray;
}
</style>
<script type="text/javascript">
$(function(){
	
	//num값은 전역변수로 선언..
	num=$("#num").val();
	loginok="${sessionScope.loginok}";
	myid="${sessionScope.myid}";
	
	list();
	
	/* alert(loginok+","+myid); */
	//insert
	$("#btnansweradd").click(function(){
		
		var content=$("#content").val();
		
		if(content.trim().length==0){
			alert("댓글을 입력해주세요.");
			return;
		}
		
		//입력없을시 ajax
		
			 $.ajax({
				 type : "post",
				 dataType : "text",
		         url : "ainsert",
		         data :{"num":num,"content":content},
		         success : function(){
		        	 
				 alert("인서트성공");
				 
				 list();
				 //입력값 지우기
				 $("#content").val();
			 }
		});
	});

	//delete
		$(document).on('click', '.adel', function(e) {

			var idx = $(this).attr("idx");
			//alert(idx);
			var a = confirm("해당댓글을 삭제 할까요?");

			if (a == true) {
				$.ajax({
					type : "get",
					dataType : "text",
					url : "adelete",
					data : {
						"idx" : idx
					},
					success : function() {
						list();
						alert("삭제");
					}

				});

			}

		});
	
	
	//수정창 띄우기
	
	$(document).on('click', '.amod', function(e) {
			var idx = $(this).attr("idx");
			//idx = $(this).attr("idx"); //전역변수
			
			//alert(idx);
			/* var a = confirm("해당댓글을 수정 할까요?"); */  
			  var myname=$("#myname").val(); 
			  var updatecontent=$("#updatecontent").val();
			
			  
			  var data="idx="+idx+"&name="+myname+"&content="+updatecontent;
			  console.log(data);
			  
			/* if (a == true) { */
				$.ajax({
					type : "get", 
					dataType : "json", // 받을게 없을때는 text, html 아닐때는 dataType받는 파일형식으로 적기
					url : "answerupdateform",
					data : data,
					success:function(res){
						
						$("#myname").val(res.name);
						$("#updatecontent").val(res.content);
						$("#updateidxnum").val(res.idx);
					}

				});
		//	} 
		});

		//수정
		$("#btnupdateinfo").click(function(){
			
			var idx=$("#updateidxnum").val();
			var updatecontent=$("#updatecontent").val();
			
			var data="idx="+idx+"&content="+updatecontent;
			
			alert(data);
			
			$.ajax({
				  
				  type:"post",
				  dataType:"text",
				  data:data,
				  url:"aupdate",
				  success:function(){
					  
					  location.reload();
				  }
			  });
			 
		});

	});

	//사용자 함수  list
	function list() {
		$.ajax({
					type : "get",
					dataType : "json",
					url : "alist",
					data : {
						"num" : num
					},
					success : function(res) {

						$("span.acount").text(res.length);

						var s = "";

						$.each(res,function(i, dto) {
											s += "<div class='answer'>";
											s += "<b class='name'>"
													+ dto.name
													+ "</b><br><br><span class='content'>"
													+ dto.content + "</span>";
											s += "<span class='day'>"
													+ dto.writeday + "</span>";

											if (loginok == 'yes'
													&& myid == dto.myid) {
												s += "<span data-toggle='modal' data-target='#answermodal' class='glyphicon glyphicon-edit amod' idx='"+dto.idx+"'></span>";
												s += "&nbsp;&nbsp;";
												s += "<span class='glyphicon glyphicon-remove adel' idx='"+dto.idx+"'></span>";
											}
											s += "</div><hr>";
										});

						$("div.alist").html(s);
					}
				});
	}
</script>
</head>
<body>
	<table class="table table-bordered" style="width: 700px; margin:100px 100px;">
		<tr>
			<td>
			<h3 style="padding:50px 10px 10px 10px;"><b>${dto.subject }</b></h3>
				<span style="color:gray; float:right; font-size:14px; padding:10px;"><fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd HH:mm"/></span>
			
				<span style="color:gray; float:left; font-size:14px; padding:10px;">작성자 : ${dto.name }(${dto.myid })</span>
				
				<c:if test="${dto.uploadfile!='no' }">
				<br><br>
					<span style="float:right; padding:10px;">
					<a href="download?clip=${dto.uploadfile }">
						<span class="glyphicon glyphicon-download-alt"></span>
						
						<b>${dto.uploadfile }</b>
					</a>
					</span>
				</c:if>
			
			</td>
			
		</tr>
	
		<tr>
			<td>
				<c:if test="${bupload==true }">
					<img alt="이미지" src="/photo/${dto.uploadfile }" style="max-width:300px;">
				</c:if>
				
				<br><br>
				<div style="padding:20px;">
				 ${dto.content }
				</div>
				<br><br>
				<b style="padding:10px;">조회: ${dto.readcount }</b>&nbsp;&nbsp;&nbsp;
				<b>댓글<span class="acount"></span></b>
			</td>
		</tr>
		
		
		<!-- 버튼 -->
		
		<tr>
			<td align="right">
			
			<!-- 글쓰기는 로그인 중일때만 -->
			
				<c:if test="${sessionScope.loginok!=null }">
				<button type="button" class="btn btn-default" onclick="location.href='form'" style="width:80px;">글쓰기</button>
				</c:if>
				<button type="button" class="btn btn-default" onclick="location.href='list?currentPage=${currentPage}'" style="width:80px;">목록</button>
				
				<!-- 로그인 중이면서, 본인글만 수정, 삭제 버튼 보이게  -->
				<c:if test="${sessionScope.loginok !=null and sessionScope.myid==dto.myid}">
				<button type="button" class="btn btn-default" onclick="location.href='updateform?num=${dto.num}&currentPage=${currentPage }'" style="width:80px;">수정</button>
				<button type="button" class="btn btn-default" onclick="location.href='delete?num=${dto.num}&currentPage=${currentPage }'" style="width:80px;">삭제</button>
				</c:if>
			</td>
		</tr>
		
		<tr>
			<td>
				<!--리스트출력  -->
				<div class="alist">
				
				</div>
					<input type="hidden" id="num" value="${dto.num }"> 
				<c:if test="${sessionScope.loginok!=null }">
					<div class="aform">
						<div class="form-inline">
						
							<input type="text" class="form-control" placeholder="댓글을 입력하세요" id="content" style="width: 80%;">
							<button type="button" class="btn btn-info" style="width: 60px;" id="btnansweradd">등록</button>
						</div>
					</div>
				</c:if>
			</td>
		</tr>
						
		<div class="container">
	
		  <!-- Modal -->
		  <div class="modal fade" id="answermodal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title" style="text-align:center; padding:20px; font-size:20px; font-weight:bold;">댓글 수정</h4>
		        </div>
		        <div class="modal-body">
		            <form name ="answerupdateform" method="post">
					<input type="hidden" name="num" id="updateidxnum">
					<div style="width: 300px; margin: 0 auto; padding: 20px 0;">
									<p>이름</p>
									<input type="text"  id="myname" class="form-control" style="width: 300px;"
										readonly="readonly"><br>
								
									<textarea type="text" class="form-control" 
									placeholder="댓글을 입력하세요" 
									id="updatecontent" style="width: 100%; height:300px;"></textarea>
								</div>
				   </form>
		        </div>
		        <div class="modal-footer">
		         <button type="button" class="btn btn-info"
					data-dismiss="modal" id="btnupdateinfo" style="margin-left: 100px;">수정하기</button>
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>
		  
		</div>

		
	</table>
</body>
</html>