<%@page import="model.simpleboard.SimpleDao"%>
<%@page import="model.simpleboard.SimpleDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	//한글 엔코딩
	request.setCharacterEncoding("utf-8");

	String realFolder = getServletContext().getRealPath("/upload");
	System.out.println(realFolder);

	//업로드 사이즈
	int uploadsize = 1024 * 1024; //1mb

	try {

		//생성자 파라메타(request, 업로드 폴더, 업로드 사이즈, 한글타이브 같은이름일 경우 1,2,3 붙히기)
		MultipartRequest multi = new MultipartRequest(request, realFolder, uploadsize, "utf-8",
		new DefaultFileRenamePolicy());
		
		//입력값 읽기
		String writer= multi.getParameter("writer");
		String subject= multi.getParameter("subject");
		String content= multi.getParameter("content");
		String pass= multi.getParameter("pass");
		//실제 업로드 이미지 읽어오기
		String imgname= multi.getFilesystemName("photo");
		
		//dto에 담기
		SimpleDto dto= new SimpleDto();
		
		dto.setWriter(writer);
		dto.setSubject(subject);
		dto.setContent(content);
		dto.setPass(pass);
		dto.setImgname(imgname);
		
		//dao
		SimpleDao dao= new SimpleDao();
		dao.insertBoard(dto);
		
		//목록
		response.sendRedirect("boardlist.jsp");
		

	} catch (Exception e) {

	}
	%>
</body>
</html>