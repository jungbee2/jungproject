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
<style>

table, td,tr{
border: 1px solid lightgray;
border-collapse: collapse;
}
th, td {
	text-align: center;
}
</style>
</head>

<body>
	<form action="ex1_quizAction.jsp" method="post">
		<table class="table table-striped" style="width: 400px;">
			<tr>
				<th width="100" bgcolor="pink">이름</th>
				<td><input type="text" name="name" required="required"></td>
			</tr>

			<tr>
				<th width="100" bgcolor="pink">생년월일</th>
				<td><input type="date" name="date" value="2023-02-15"></td>
			</tr>

			<tr>
				<th width="100" bgcolor="pink">취미</th>
				<td>
					<input type="checkbox" name="hobby" value="개발">개발 
					<input type="checkbox" name="hobby" value="공부">공부 
					<input type="checkbox" name="hobby" value="여행" checked="checked">여행 
					<input type="checkbox" name="hobby" value="코딩">코딩</td>
			</tr>

			<tr>
				<td colspan="2" text-align="center">
					<button type="submit" class="btn btn-danger" value="서버전송">서버전송</button>
				</td>
			</tr>

		</table>

	</form>
</body>
</html>