<%@page import="java.io.File"%>
<%@page import="model.simpleboard.SimpleDao"%>
<%@page import="javax.print.SimpleDoc"%>
<%@page import="model.simpleboard.SimpleDto"%>
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
	//num, pass
	String num = request.getParameter("num");
	String pass = request.getParameter("pass");
	
	//db선언
	SimpleDao db= new SimpleDao();
	
	//메서드 isEqualPass로 부터 반환값 b받기
	boolean b= db.isEqualPass(num, pass);
	
	//b가 참이면 삭제후 목록.. 거짓이면 스크립트 경고창
	if (b)
		
	{
		//게시글 지우기 전에 업로드 이미지 지우기
		String imgName= db.getData(num).getImgname();
		
		//업로드 경로 구하기
		String uploadPath = getServletContext().getRealPath("/");
		
		//파일생성
		File file= new File(uploadPath+"\\"+imgName);
		
		//파일삭제
		if(file.exists()) //파일이 존재하면
			file.delete(); //파일삭제
		
		//db삭제
		db.deleteSimpleboard(num);
			
		response.sendRedirect("boardlist.jsp");
	}else{%>
	
	<script type="text/javascript">
		alert("비밀번호가 맞지않습니다.");
		history.back();
	</script>
	
	<%
	}
	%>
</body>
</html>