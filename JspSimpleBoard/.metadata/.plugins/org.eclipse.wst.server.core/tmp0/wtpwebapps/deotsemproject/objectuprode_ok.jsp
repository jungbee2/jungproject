<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%@page import="uprode.Uprode"%>
<%@page import="uprode.UprodeDAO"%>
<%@page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%

   int size = 10*1024*1024;
   int num;
   String category="";
   String photo="";
   String name="";	
   int price;
   String exp1 ="";
   String exp2 = "";
   String photo2="";
   String photo3="";
   String photo4="";
   int volume;
   String time = "";
   
   String saveFolder = "/object_photo/";
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
		
	    category = multi.getParameter("category");
        name = multi.getParameter("name");
		photo = multi.getFilesystemName("photo");
        exp2 = multi.getFilesystemName("exp2");
        exp1 = multi.getParameter("exp1");
        photo2 = multi.getFilesystemName("photo2");
        photo3 = multi.getFilesystemName("photo3");
        photo4 = multi.getFilesystemName("photo4");
        volume = Integer.parseInt(multi.getParameter("volume"));
        price = Integer.parseInt(multi.getParameter("price"));

	
		
	    
	    UprodeDAO uprodeDAO = new UprodeDAO();
	    
	    int result = uprodeDAO.insertobj(category, photo, name, price, exp1, exp2, photo2, photo3, photo4, volume);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('상품 업로드에 실패하였습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href='object_list.jsp';");
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