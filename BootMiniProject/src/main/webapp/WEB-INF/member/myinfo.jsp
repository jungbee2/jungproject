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
<script type="text/javascript">
	$(function() {

		$("#btnnewphoto").click(function() {
			$("#newphoto").trigger("click");
		});

		/* 이미지 수정  */
		$("#newphoto").change(function() {

			var num = $(this).attr("num");
			//alert(num);

			var form = new FormData();
			form.append("photo", $("#newphoto")[0].files[0]); //선택한 1개만 추가
			form.append("num", num);

			console.dir(form);

			$.ajax({

				type : "post",
				dataType : "text",
				url : "updatephoto",
				processData : false, /* 서버전달시 데이터가 query String 형태로 전달되는데 파일전송의 경우 이를 하지않아야 하는 설정이 false */
				contentType : false, /* encType이 원래 기본이 application...www 이런형태인데 multipart/form-data로 변경해주는것이 false */
				data : form,
				success : function() {

					location.reload();
				}
			});
		});

		/* modal 수정 */

		$("#btnupdateinfo").click(function() {

			/* 	 // 사용자가 입력한 회원 정보를 변수에 저장
			    var name = $("#myname").val();
			    var email = $("#myemail").val();
			    var hp = $("#myhp").val();
			    var addr = $("#myaddr").val();
			 */
			var updateInfo = $("form[name=updateForm]").serialize();

			$.ajax({
				type : "post",
				dataType : "text",
				url : "infoupdate",
				data : updateInfo,
				success : function(res) {

					/*  $("#myname").val(response.name);
					 $("#myemail").val(response.email);
					 $("#myhp").val(response.hp);
					 $("#myaddr").val(response.addr); */

					location.reload();
				}
			});

		});

		$("#deleteinfo").click(function() {
			// 삭제할 정보의 번호(num)를 가져옴
			var num = $("#deleteinfo").attr("num");
			// num 변수를 출력
			alert(num);
			// 삭제 ajax
			$.ajax({
				type : "GET",
				dataType : "html",
				url : "btnmemberdel",
				data : {
					"num" : num
				},
				success : function() {

					// 삭제 완료 시, 로그아웃 실행
					var root = '${root}';

					$.ajax({
						type : "GET",
						dataType : "html",
						url : root + "/member/logout",
						success : function() {
							alert("삭제되었습니다.");
							// 새로고침
							location.reload();
						}
					});
				}
			});
		});

	});
</script>


</head>
<body>
	<div style="margin: 0 auto;">
		<table class="table table-bordered">

			<c:forEach var="dto" items="${list }">

				<c:if
					test="${sessionScope.loginok!=null and sessionScope.myid==dto.id }">

					<tr>
						<td style="width: 250px;" align="center" rowspan="5"><img
							alt="이미지" src="../photo/${dto.photo }" width="220" height="250"
							border="1"> <br> <input type="file" id="newphoto"
							style="display: none;" num="${dto.num }"> <!-- 사진 수정시 호출  -->
							<button type="button" class="btn btn-info" id="btnnewphoto">사진수정</button>
						</td>

						<td style="width: 300px;">회원명: ${dto.name }</td>


						<div class="container">

							<!-- Modal -->
							<div class="modal fade" id="updateinfoModal" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content" style="width: 400px; margin-left: 20%;">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title" style="text-align: center; font-size: 20px; padding: 5px 0 5px 0; font-weight: bold;">회원정보 수정</h4>
											<hr>
										</div>
										<div class="modal-body">
										<form name ="updateForm" method="post">
										<input type="hidden" name="num" value="${dto.num }">
											<div style="width: 300px; margin: 0 auto; padding: 20px 0;">
											<p>ID</p>
											<input type="text"  class="form-control" style="width:300px;"value=" ${dto.id }"  name="id" readonly="readonly"><br>
											<p>NAME</p>
											<input type="text"  class="form-control" style="width:300px;"value=" ${dto.name }" name="name"><br>
											<p>EMAIL</p>
											<input type="text"  class="form-control" style="width:300px;"value=" ${dto.email }" name="email"><br>
											<p>HP</p>
											<input type="text"  class="form-control" style="width:300px;"value="  ${dto.hp }" name="hp"><br>
											<p>ADDR</p>
											<input type="email"  class="form-control" style="width:300px;"value=" ${dto.addr }" name="addr"><br>
											</div>
										</form>
										</div>
										<div class="modal-footer">
										<button type="button" class="btn btn-info"
												data-dismiss="modal" id="btnupdateinfo" style="margin-left: 100px;">수정하기</button>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>
									</div>

								</div>
							</div>

						</div>


						<!--수정 삭제버튼  -->
						<td rowspan="5" align="center"
							style="width: 200px; vertical-align: middle;">

							<button type="button" class="btn btn-info" data-toggle="modal"
								data-target="#updateinfoModal">수정</button>

							<button type="button" class="btn btn-danger"
								id="deleteinfo" num="${dto.num }">삭제</button>
						</td>
					</tr>

					<tr>
						<td style="width: 300px;">아이디: ${dto.id }</td>
					</tr>
					<tr>
						<td style="width: 300px;">이메일: ${dto.email }</td>
					</tr>
					<tr>
						<td style="width: 300px;">핸드폰: ${dto.hp }</td>
					</tr>

					<tr>
						<td style="width: 300px;">주소: ${dto.addr }</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>
</body>
</html>