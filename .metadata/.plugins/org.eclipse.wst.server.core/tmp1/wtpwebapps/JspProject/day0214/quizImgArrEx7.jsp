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
img.mainimg {
	width: 120px;
	height: 160px;
	border: 1px solid gray;
}

img.mainimg:hover {
	width: 200px;
	height: 260px;
	border: 5px solid orange;
	cursor: pointer;
}

table.mainimg {
	width: 650px;
}
</style>

</head>
<body>

	<!-- 배열선언없이 일련번호인 이미지 20개를 4행 5열로 출력해주세요
이미지나 테이블 크기 모두 자유
만화이미지, 미니언즈, 연예인사진 모두 가능 -->

	<table class="mainimg">
		<%
		int n = 1;
		for (int row = 1; row <= 4; row++) { //행
		%>

		<tr>
			<%
			for (int col = 1; col <= 5; col++) { //열
			%>

			<td><img alt="" src="../image/<%=n%>.jpg" class="mainimg"></td>
			<%
			n++;
			}
			%>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>