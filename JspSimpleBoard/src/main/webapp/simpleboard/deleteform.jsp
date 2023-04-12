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

	function funcdel(num){
		
		var yes=confirm("삭제하시겠습니까?");
		
		if(yes){
			
			location.href="deleteaction.jsp?num"+num;
		
		}
		
	}
</script>
</head>
<%
String num = request.getParameter("num");
%>
<body>
	<div style="margin: 100px 100px;">
		<form action="deleteaction.jsp" method="post">
			<table class="table table-bordered" style="width: 300px;">
			
			<caption><b>삭제비밀번호 입력</b></caption>
				<tr height="120" align="center">
				<th>비밀번호를 입력해주세요<br><br>
					
					 <input type="password"  class="form-control" name="pass" size="5"
						required="required" placeholder="숫자 4자리"> 
						
						
						<!-- hidden -->
						<input type="hidden" name="num"
						value="<%=num%>"> <br><br>
						
						<input type="submit" value="확인"
						class="btn btn-danger" onclick="funcdel('<%=num%>')">
						 <input type="button" value="목록" class="btn btn-info"
						onclick="history.back()">
				</tr>
			</table>
		</form>
	</div>
</body>
</html>