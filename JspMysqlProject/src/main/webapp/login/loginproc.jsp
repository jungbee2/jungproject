<%@page import="login.model.LoginDao"%>
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
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String save = request.getParameter("savechk");

	//아이디와 비번 맞는지 확인
	LoginDao db = new LoginDao();
	boolean flag = db.isLogin(id, pass);

	//맞으면 세션에 저장후 로그인 메인으로 이동..안맞으면 경고창
	if (flag) {
		//로그인중인지를 알수있는 세션저장
		session.setAttribute("loginok", "yes");

		//아이디와 체크값 저장
		session.setAttribute("idok", id);

		//체크하면 값으로 on이 체크안하면 null값 지정
		session.setAttribute("saveok", save);

		//세션유지시간
		session.setMaxInactiveInterval(60 * 60 * 8); //8시간동안 유지

		//로그인 메인으로 이동
		response.sendRedirect("loginmain.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("아이디와 비밀번호가 맞지 않습니다.");
		history.back();
	</script>
	<%
	}
	%>



</body>
</html>