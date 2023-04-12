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
	<form action="uploadAction2.jsp" method="post"
		enctype="multipart/form-data">
		<table class="table table-bordered" style="width: 400px;">

			<caption>
				<b> 여러개 이미지업로드</b>
			</caption>

			<tr>

				<th width="100" bgcolor="lightyellow">작성자</th>
				<td><input type="text" name="writer" class="form-control"
					style="width: 120px;"></td>
			</tr>

			<tr>
				<th width="100" bgcolor="lightyellow">이미지</th>
				<td><input type="file" name="photo1" class="form-control">
					<br> <input type="file" name="photo2" class="form-control">
					<br> <input type="file" name="photo3" class="form-control">
					<br></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-info">서버에 업로드하기</button>
				</td>
			</tr>

		</table>
	</form>

</body>
</html>