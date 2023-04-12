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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
  <form action="insertAction.jsp" method="post" class="form-inline">	
	<table class="table table-bordered" style="width: 300px;">
		<caption><b>팀회원 정보 추가</b></caption>
		<tr>
			<th width="100" bgcolor="orange">이름</th>
			<td>
				<input type="text"  name="iname" class="form-control"
					required="required">
			</td>			
		</tr>
		<tr>
			<th width="100" bgcolor="orange">운전면허</th>
			<td>
				<input type="checkbox" name="driver" class="form-control">있음
			</td>			
		</tr>
		<tr>
			<th width="100" bgcolor="orange">핸드폰</th>
			<td>
				<input type="text" name="hp" class="form-control"
				placeholder="핸드폰번호" required="required">
			</td>			
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info">팀정보저장</button>
			</td>
		</tr>
	</table>
</form>
  
</body>
</html>