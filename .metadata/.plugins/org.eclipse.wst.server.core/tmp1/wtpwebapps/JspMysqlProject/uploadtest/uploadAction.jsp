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
	ServletContext context = getServletContext();
	String realFolder = context.getRealPath("/save");

	System.out.println("folder: " + realFolder);
	int filesize = 1024 * 1024 * 5;
	MultipartRequest multi = null;
	try {

		// servlets.com에서 다운받은 cos.jar의 클래스 이용. 파일 업로드를 위한 클래스.
		multi = new MultipartRequest(request, realFolder, filesize, "utf-8", new DefaultFileRenamePolicy());

		String name = multi.getParameter("name");
		String title = multi.getParameter("title");
		String uploadFileName = multi.getFilesystemName("uploadFile");
		String originalFileName = multi.getOriginalFileName("uploadFile");
	%>
	<table class="table table-bordered" style="width: 300px;">
		<tr>
			<th width="100">이름</th>
			<td><%=name %></td>
		</tr>

		<tr>
			<th width="100">제목</th>
			<td><%=title %></td>
		</tr>

		<tr>
			<th width="100">업로드파일명</th>
			<td><img alt="" src="../save/<%=uploadFileName %>"></td>
		</tr>
		<tr>
			<th width="100">원래 파일명</th>
			<td><%=originalFileName %></td>
		</tr>
		
		<tr>
		<td colspan="2" align="center">
		<input type="button" value="다시 업로드 하기" onclick="location.href='uploadForm.jsp'">
		</tr>

	</table>


	<%
	} catch (Exception e) {

	}
	%>
</body>
</html>