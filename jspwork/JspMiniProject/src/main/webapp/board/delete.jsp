<%@page import="data.dao.SmartDao"%>
<%@page import="java.io.File"%>
<%@page import="data.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	//db삭제뿐 아니라 업로드된 파일도 삭제해보자
	String num=request.getParameter("num");
	String currentPage=request.getParameter("currentPage");
	
	//db로 부터 저장된 이미지 명 얻기
	SmartDao dao= new SmartDao();

	//db삭제
	dao.deleteSmart(num);
	
	//보던페이지로 이동
	response.sendRedirect("../index.jsp?main=board/boardlist.jsp?currentPage="+currentPage);
	
%>