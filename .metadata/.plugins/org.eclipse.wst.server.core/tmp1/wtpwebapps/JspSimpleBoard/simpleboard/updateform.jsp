<%@page import="model.simpleboard.SimpleDto"%>
<%@page import="model.simpleboard.SimpleDao"%>
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
<script type="text/javascript">
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			};
			reader.readAsDataURL(input.files[0]);
		}
		
	};
</script>
<style type="text/css">
#blah {
	position: absolute;
	left: 600px;
	top: 100px;
}
</style>
</head>

<%
String num=request.getParameter("num");
SimpleDao dao= new SimpleDao();
SimpleDto dto= dao.getData(num);
%>
<body>
	<form action="updateaction.jsp" method="post"
		enctype="multipart/form-data">
		
		<!-- hidden으로 num넘기기 (폼안에 아무데나) -->
		<input type="hidden" name="num"  value="<%=num%>">
		
		
		<table class="table table-bordered" style="width: 500px;">
			<tr>
				<th style="width: 100px;" bgcolor="lightyellow">작성자</th>
				<td><b><%=dto.getWriter() %></b></td>
			</tr>

			<tr>
				<th style="width: 100px;" bgcolor="lightyellow">제목</th>
				<td><input type="text" name="subject" style="width: 300px;"
					class="form-control" placeholder="제목" required="required" value="<%=dto.getSubject()%>">
				</td>
			</tr>

			<tr>
				<th style="width: 100px;" bgcolor="lightyellow">사진업로드</th>
				<td><input type="file" name="photo" style="width: 300px;"
					class="form-control" required="required" onchange="readURL(this);">
				</td>
			</tr>

			<tr>
				<th style="width: 100px;" bgcolor="lightyellow">비밀번호</th>
				<td><input type="text" name="pass" style="width: 300px;"
					class="form-control" placeholder="비밀번호(숫자4자리)" required="required"
					pattern="[0-9]{4}"></td>
			</tr>
			<tr>
				<td colspan="2"><textarea style="width: 500px; height: 200px;"
						class="form-control" name="content" required="required">
						<%=dto.getContent() %>
						</textarea>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					class="btn btn-success" value="수정하기"> 
					<input type="button" class="btn btn-success" value="목록으로"
					onclick="location.href='boardlist.jsp'"></td>
			</tr>
		</table>
	</form>

	<img alt="" src="../upload/<%=dto.getImgname() %>" id="blah" style="max-width: 300px;">
</body>
</html>