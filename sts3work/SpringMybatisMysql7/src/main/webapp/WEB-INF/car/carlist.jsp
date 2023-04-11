<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!-- 추가할부분 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> <!-- 추가할부분 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 -->
<meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- 추가할부분 -->
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>
<fmt:setLocale value="ko_kr" scope="session"/>

   <c:if test="${totalCount==0 }">
      <h3 class="alert alert-info">저장된 차의 정보가 없습니다.</h3>
   </c:if>

   <c:if test="${totalCount>0 }">
      <h3 class="alert alert-info">총 ${totalCount } 개의 글이 있습니다.</h3>

      <table class="table table-borderd" style="width: 700px;">
         <tr bgcolor="#f0ffff">
            <th width="60">번호</th>
            <th width="120">차종</th>
            <th width="80">색상</th>
            <th width="140">가격</th>
            <th width="160">구입일</th>
            <th width="100">수정|삭제</th>
         </tr>
         <c:forEach var="dto" items="${list }" varStatus="i">
            <tr>
               <td>${i.count }</td>
               <td>${dto.carname }</td>
               <td>
                  <div style="width:20px; height:20px; background-color: ${dto.carcolor };border:3px solid lightgray; border-radius:100px;"></div>
               </td>
               
               <td>
               <fmt:formatNumber value="${dto.carprice }" type="currency"/>
               </td>
               
               <td>${dto.carguip }</td>
               
               <td><button type="button" class="btn btn-info btn-xs" onclick="location.href='updateform?num=${dto.num}'">수정</button>
                     <button type="button" class="btn btn-danger btn-xs" onclick="location.href='delete?num=${dto.num}'">삭제</button></td>
            </tr>
         </c:forEach>

      </table>
   </c:if>
   
      <button type="button" style="width: 100px" class="btn btn-info"
      onclick="location.href='writeform'">차정보 입력</button>
      
</body>
</html>