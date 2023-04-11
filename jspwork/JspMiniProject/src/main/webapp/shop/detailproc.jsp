<%@page import="data.dao.ShopDao"%>
<%@page import="data.dto.CartDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");

//multi변수로 모든 폼데이타 읽어오기
String shopnum = request.getParameter("shopnum");
String num = request.getParameter("num");
int cnt = Integer.parseInt(request.getParameter("cnt"));

//dto에 저장
CartDto dto = new CartDto();

dto.setShopnum(shopnum);
dto.setNum(num);
dto.setCnt(cnt);

//dao
ShopDao dao = new ShopDao();
//update
dao.insertCart(dto);
%>