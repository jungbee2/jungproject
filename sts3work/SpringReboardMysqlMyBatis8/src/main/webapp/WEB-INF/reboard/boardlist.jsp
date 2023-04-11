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
<%-- <div class="alert alert-info">
총 ${totalCount }개의 게시글이 있습니다.
</div> --%>
<h2>리스트</h2>

<div style="margin: 30px 30px;">
		<table class="table table-bordered" style="width: 800px;">
			<caption>
				<b>Spring 게시판</b> <span style="float: right;">
					<button type="button" onclick="location.href='writeform?currentPage=${currentPage}'"
						class="btn btn-default">글쓰기</button>
				</span>
			</caption>

			<tr bgcolor="#ddd" align="center">
				<td width="60"><b>번호</b></td>
				<td width="360"><b>제목</b></td>
				<td width="120"><b>작성자</b></td>
				<td width="160"><b>작성일</b></td>
				<td width="100"><b>조회</b></td>
			</tr>
			
			<c:if test="${totalCount==0 }">
				<tr>
					<td colspan="5" align="center">
						<b>등록된 게시글이 없습니다.</b>
					</td>
				</tr>
			</c:if>
			
			<c:if test="${totalCount>0 }">
				<c:forEach var="dto" items="${list }">
					<tr>
						<td align="center">${no }</td>
						<c:set var="no" value="${no-1 }"/>
						<!-- 출력후 감소(증감식 안되므로) -->
						<!-- 제목 -->
							<td>
							<!-- relevel만큼 공백  -->
							<c:forEach begin="1" end="${dto.relevel }">
							 &nbsp;&nbsp; <!-- 2칸..원글이면 0이므로 안된다 -->
							</c:forEach>
							
							<!-- 답글이면 re이미지출력 -->
							<c:if test="${dto.relevel>0 }">
							<!-- restep도 됨  -->
							<img alt="" src="../photo/re.png">
							<!-- 상대경로.. -->
							</c:if>
							
							<!--제목.. 여기통해서 내용보기로.. -->
							<a href="content?num=${dto.num }&currentPage=${currentPage}">${dto.subject }</a>
						
							<!-- 이미지가 있을경우 아이콘 표시  -->
							<c:if test="${dto.photo!='no' }">
								<span class="glyphicon glyphicon-picture"></span>
							</c:if>
							
								
							<!--댓글 갯수 출력 , #answer누르면  페이지 넘어갈때 댓글중심으로 바로 내러감 -->
							<c:if test="${dto.acount>0 }">
								<a href="content?num=${dto.num }&currentPage=${currentPage}#answer" style="color:red;">[${dto.acount }]</a>
							</c:if>
							</td>
							
							<td align="center">${dto.writer }</td>
							<td align="center">
							<fmt:formatDate value="${dto.writeday }" pattern="yyyy-MM-dd"/>
							</td>
							
							<td align="center">${dto.readcount }</td>
							</tr>
				
				</c:forEach>
			</c:if>
		</table>
		
		<!-- 페이징 -->
		<c:if test="${totalCount>0}">
			<div style="width: 800px; text-align: center;">
				<ul class="pagination">
					<!-- 이전 -->
					<c:if test="${startPage>1 }">
						<li>
						<a href="list?currentPage=${startPage-1}">이전</a>
						</li>
					</c:if>

					<c:forEach var="pp" begin="${startPage }" end="${endPage }">
						<c:if test="${currentPage==pp }">
							<li class="active"><a href="list?currentPage=${pp}">${pp}</a>
							</li>
						</c:if>

						<c:if test="${currentPage!=pp }">
							<li><a href="list?currentPage=${pp}">${pp}</a></li>
						</c:if>
					</c:forEach>
					
					<!--다음 -->
					<c:if test="${endPage<totalPage }">
						<li>
						<a href="list?currentPage=${endPage+1}">다음</a>
						</li>
					</c:if>
				</ul>
			</div>
		</c:if>
	</div>
</body>
</html>