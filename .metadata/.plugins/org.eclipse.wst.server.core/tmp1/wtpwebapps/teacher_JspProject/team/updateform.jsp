<%@page import="team.model.TeamDto"%>
<%@page import="team.model.TeamDao"%>
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
<%
String num=request.getParameter("num");
TeamDao dao=new TeamDao();
TeamDto dto=dao.getData(num);
%>
<body>
  <form action="updateAction.jsp" method="post" class="form-inline">
  
  	<input type="hidden" name="num" value="<%=num%>">
	<table class="table table-bordered" style="width: 300px;">
		<caption><b>팀회원 정보 수정</b></caption>
		<tr>
			<th width="100" bgcolor="lightgray">이름</th>
			<td>
				<input type="text"  name="iname" class="form-control"
					required="required" value="<%=dto.getMyname()%>">
			</td>			
		</tr>
		<tr>
			<th width="100" bgcolor="lightgray">운전면허</th>
			<td>
				<input type="checkbox" name="driver" class="form-control"
				<%=dto.getDriver().equals("있음")?"checked":"" %>>있음
			</td>			
		</tr>
		<tr>
			<th width="100" bgcolor="lightgray">핸드폰</th>
			<td>
				<input type="text" name="hp" class="form-control"
				placeholder="핸드폰번호" required="required" value="<%=dto.getHp()%>">
			</td>			
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info">팀정보수정</button>
			</td>
		</tr>
	</table>
</form>
  
</body>
</html>