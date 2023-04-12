<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%@page import="bbs.QnA"%>
<%@page import="bbs.QnaDAO"%>
<%@page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%

   int size = 10*1024*1024;
   int num;
   String pwd = "";
   String name = "";
   String title = "";
   String title2 = "";
   String memo = "";
   String photo = "";
   int hit;
   int indent;
   int step;
   
   String saveFolder = "/q&a/";
   ServletContext context = getServletContext();
   String uploadPath= context.getRealPath(saveFolder); //// object_photo는 폴더명 / 폴더의 경로를 구해옴
   
   System.out.print("realfolder : " + uploadPath + "<br>");
   
	try {
		MultipartRequest multi = new MultipartRequest( // MultipartRequest 인스턴스 생성(cos.jar의 라이브러리)
				request, 
				uploadPath, // 파일을 저장할 디렉토리 지정
				5 * 1024 * 1024, // 첨부파일 최대 용량 설정(bite) / 10KB / 용량 초과 시 예외 발생
				"utf-8", // 인코딩 방식 지정
				new DefaultFileRenamePolicy() // 중복 파일 처리(동일한 파일명이 업로드되면 뒤에 숫자 등을 붙여 중복 회피) 
				);
		
		title = multi.getParameter("title");
		title2 = multi.getParameter("title2");
		name = multi.getParameter("name");
		pwd = multi.getParameter("pwd");
        memo = multi.getParameter("memo");
        photo = multi.getFilesystemName("photo");

	    QnaDAO qnaDAO = new QnaDAO();
	    
	    int result = qnaDAO.write(pwd,title,title2,name,memo,photo);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패하였습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='q&a_list.jsp';");
				script.println("</script>");
			}
	}
		 catch (Exception e) {
				e.getStackTrace();
			}
		
	%>
	


<title>Insert title here</title>
</head>
<body>

</body>
</html>