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
div.loginform {
	width: 500px;
	margin: 0 auto;
	margin-top: 100px;
}
</style>
</head>

<body>

	<%
	//세션으로부터 아이디와 체크값을 얻는다.
	String myid = (String) session.getAttribute("idok");
	String saveid = (String) session.getAttribute("saveok");

	boolean save = true;

	if (saveid == null || saveid.equals("no")) {
		myid = ""; //아이디저장 체크하지않을때는 아이디가 남아있지 않는다
		save = false; //체크하지 않았을 경우 false, 그 이외에는 초기값이 true이므로 true가 된다.
	}
	%>
	<div class="loginform">
		<h3>회원로그인</h3>
		<form action="loginproc.jsp" method="post">
			<input type="text" name="id" style="width: 200px;"
				class="form-control input-lg" placeholder="로그인할 아이디"
				required="required" value="<%=myid%>"> <br> <input
				type="password" name="pass" style="width: 200px;"
				class="form-control input-lg" placeholder="로그인할 비밀번호"
				required="required"> <br>
			<button type="submit" class="btn btn-success btn-lg"
				style="width: 200px; height: 50px;">로그인</button>
			<br> <input type="checkbox" name="savechk"
				<%=save ? "checked" : ""%>>아이디저장
		</form>
	</div>
</body>
</html>