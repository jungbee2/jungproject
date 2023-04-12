<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="uprode.Uprode" %>
<%@ page import="uprode.UprodeDAO" %>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

</head>
<body>

 	<%



   int num = 0;
   if (request.getParameter("num") != null){
	  num = Integer.parseInt(request.getParameter("num"));
   }

  if ( num == 0 ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='notice_list.jsp'");
		script.println("</script>");
}  
  
  

  int size = 10*1024*1024;
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
       photo = multi.getFilesystemName("photo2");
       photo = multi.getFilesystemName("photo3");
       photo = multi.getFilesystemName("photo4");
       volume = Integer.parseInt(multi.getParameter("volume"));
       price = Integer.parseInt(multi.getParameter("price"));

	
	
		
  
  UprodeDAO uprodeDAO = new UprodeDAO();
  Uprode uprode = new UprodeDAO().getUprode(num);
 
        
	        int result = uprodeDAO.update(num, category, photo, name, price, exp1, exp2, photo2, photo3, photo4, volume);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('상품 수정에 실패하였습니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('상품 정보가 수정되었습니다.')");
				script.println("location.href='notice_list.jsp';");
				script.println("</script>");
		
			}
			
	}
	 catch (Exception e) {
			e.getStackTrace();
		}
 
	
	    
	%>




</body>
</html>