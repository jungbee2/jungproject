<%@page import="data.dao.SmartDao"%>
<%@page import="data.dto.SmartDto"%>
<%@page import="data.dao.GuestDao"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

	request.setCharacterEncoding("utf-8");


	//dto에 저장
	SmartDto dto=new SmartDto();
	
	String currentPage= request.getParameter("currentPage");
	
	//multi변수로 모든 폼데이타 읽어오기
	String num=request.getParameter("num");
	String content=request.getParameter("content");
	String writer= request.getParameter("writer");
	String subject = request.getParameter("subject");
	
	dto.setNum(num);
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setContent(content);
	
	//dao
	SmartDao dao= new SmartDao();
	//update
	dao.updateSmart(dto);

	response.sendRedirect("../index.jsp?main=board/detailview.jsp?num="+num+"&currentPage="+currentPage);

%>