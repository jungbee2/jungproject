<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.simpleboard.SimpleDto"%>
<%@page import="java.util.List"%>
<%@page import="model.simpleboard.SimpleDao"%>
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


<!--  
<script type="text/javascript">
$(document).ready(function(){
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function (e) {
            //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#blah').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            };                   
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        };
    };
    
    -->

</script>

<!--  
<style type="text/css">
#blah {
	position: absolute;
	left: 600px;
	top: 100px;
}
</style>

-->
</head>
<%
SimpleDao db = new SimpleDao();

//List<SimpleDto> list=db.getAllBoardDatas();
int totalCount;
int totalPage;//총페이지수
int startPage;//각블럭의 시작페이지
int endPage;//각블럭의 끝페이지
int start; //각페이지의 시작번호
int perPage=3; //한페이지에 보여질 글의 갯수
int perBlock=5; //한블럭당 보여지는 페이지개수
int currentPage; //현재페이지
int no;


//총갯수
totalCount=db.getTotalCount();


//현재페이지번호 읽기(단 null 일때는 1페이지로 설정)
if(request.getParameter("currentPage")==null)
	currentPage=1;
else
currentPage=Integer.parseInt(request.getParameter("currentPage"));


//총 페이지 갯수
totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);


//각블럭의 시작페이지..현재페이지가 3(s:1,e:5) 6(s:6 e:10)
startPage=(currentPage-1)/perBlock*perBlock+1;
endPage=startPage+perBlock-1;


//총페이지가 8. (6~10...endpage를 8로 수정해주어야 한다)
if(endPage>totalPage)
	endPage=totalPage;


//각페이지에서 불러올 시작번호
start=(currentPage-1)*perPage;


//각페이지에서 필요한 게시글 가져오기
List<SimpleDto> list=db.getList(start, perPage);
no=totalCount-(currentPage-1)*perPage;


//List<SimpleDto> list = db.getAllBoardDatas();
%>
<body>

	<div class="alert alert-danger" style="width: 800px;">
		<%-- -<b>총 <%=list.size()%>개의 글이 있습니다.--%>
		</b>
	</div>

	<table class="table table-hover" style="width: 800px;">
		<caption>
			<b>게시판형 목록보기</b>

			<button type="button" class="btn btn-info"
				onclick="location.href='insertform.jsp'" >글쓰기</button>


			<button type="button" class="btn btn-info"
				onclick="location.href='boardlist2.jsp'" >목록2</button>


			<button type="button" class="btn btn-info"
				onclick="location.href='/JspSimpleBoard/index.jsp'">인덱스</button>

		</caption>

		<tr style="background: #d8bfd8">
			<th width="70">번호</th>
			<th width="400">제목</th>
			<th width="120">작성자</th>
			<th width="170">작성일</th>
			<th width="70">조회</th>
		</tr>


		<%
		//출력할 날짜

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

		//for (int i = 0; i < list.size(); i++) 
		
			for(SimpleDto dto:list)
		{
				
		
			//1번열에 출력할 번호
			//no = list.size() - i;

			//dto
			//SimpleDto dto = list.get(i);
		%>

		<tr>
			<td align="center"><%=no--%></td>
			<!-- 제목 누르면 내용보기로 넘어가기 -->
			<td><a href="content.jsp?num=<%=dto.getNum()%>"> <img alt=""
					src="../upload/<%=dto.getImgname()%>"
					style="width: 30px; height: 30px;"> <%=dto.getSubject() %>
			</a></td>

			<!-- 작성자 -->

			<td><%=dto.getWriter() %></td>

			<!-- 작성일 -->
			<td><%=sdf.format(dto.getWriteday()) %></td>
			<!-- 조회수 -->
			<td align="center"><%=dto.getReadcount() %></td>
		</tr>


		<%
		}
		%>

	</table>
	


<!-- 페이징 처리 -->
<div style="width: 500px; text-align: center;" class="container">
<ul class="pagination">
<%
//이전
if(startPage>1)
{%>
	 <li>
	 <a href="boardlist.jsp?currentPage=<%=startPage-1%>">이전</a>
	 </li>
<%}
for(int pp=startPage;pp<=endPage;pp++)
{
	 if(pp==currentPage)
	 {%>
		 <li class="active">
		 <a href="boardlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
		 </li>
	 <%}else{%>
		
		 <li>
		 <a href="boardlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
		 </li>
	 <%}
}
//다음
if(endPage<totalPage)
{%>
	 <li>
	 <a href="boardlist.jsp?currentPage=<%=endPage+1%>">다음</a>
	 </li>
<%}
%>
</ul>
</div>


	<!--  
	<form action="insertaction.jsp" method="post"
		enctype="multipart/form-data">
		<table class="table table-boredred" style="width: 500px;">
			<tr>
				<th style="width: 100px;" bgcolor="lightgray">작성자</th>
				<td><input type="text" name="writer" style="width: 200px;"
					class="form-control" placeholder="writer" autofocus="autofocus"
					required="required"></td>
			</tr>

			<tr>
				<th style="width: 100px;" bgcolor="lightgray">제목</th>
				<td><input type="text" name="subject" style="width: 300px;"
					class="form-control" placeholder="subject" required="required"></td>
			</tr>

			<tr>
				<th style="width: 100px;" bgcolor="lightgray">사진업로드</th>
				<td><input type="file" name="photo" style="width: 300px;"
					class="form-control" required="required"></td>
			</tr>

			<tr>
				<th style="width: 100px;" bgcolor="lightgray">비밀번호
				<td><input type="text" name="pass" style="width: 300px;"
					class="form-control" placeholder="password(숫자4자리)"
					required="required" pattern="[0-9]{4}"></td>
			</tr>

			<tr>
				<td colspan="2"><textarea style="width: 500ox; height: 200px;"
						class="form-control" name="content" required="required"
						onchange="readURL(this)"></textarea></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					class="btn btn-info" value="저장하기"> <input type="button"
					class="btn btn-info" value="목록으로"
					onclick="location.href='boardlist.jsp'"></td>
			</tr>

		</table>
	</form>

	<img alt="" src="" id="blah" style="max-width: 300px;">
	
	-->
</body>
</html>