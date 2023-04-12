<%@page import="myshop.model.MyshopDto"%>
<%@page import="myshop.model.MyshopDao"%>
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
<script type="text/javascript">
	$(function() {
		var srcImg = $("#photo").val();
		$("#myphoto").attr("src", "../쇼핑몰사진/" + srcImg + ".jpg");
	});
</script>
</head>
<%
String num = request.getParameter("num");
MyshopDao dao = new MyshopDao();
MyshopDto dto = dao.getSangpum(num);
%>

<body>
	<div style="margin: 30px 30px;">
		<form action="updateaction.jsp" method="post">

			<!-- hidden으로 num표시 -->

			<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered" style="width: 400px;">

				<caption>
					<b>상품수정</b>
				</caption>
				<tr>
					<th width="100" bgcolor="#ffc">상품명</th>
					<td><input type="text" name="sangpum" required="required"
						class="form-control" value="<%=dto.getSangpum()%>"></td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ffc">상품사진</th>
					<td>
						<div>
							<select name="photo" id="photo" class="form-select"
								style="width: 150px;">
								<option value="11"
									<%=dto.getPhoto().equals("11") ? "selected" : ""%>>단화</option>
								<option value="25"
									<%=dto.getPhoto().equals("25") ? "selected" : ""%>>원피스</option>
								<option value="24"
									<%=dto.getPhoto().equals("24") ? "selected" : ""%>>바지</option>
								<option value="30"
									<%=dto.getPhoto().equals("30") ? "selected" : ""%>>헤어스카프</option>
								<option value="29"
									<%=dto.getPhoto().equals("29") ? "selected" : ""%>>모자</option>
								<option value="32"
									<%=dto.getPhoto().equals("32") ? "selected" : ""%>>정장세트</option>
							</select> <img alt="" src="" width="30" height="30" id="myphoto">
						</div> <script type="text/javascript">
							$("#photo").change(function() {
								var s = "../쇼핑몰사진/" + $(this).val() + ".jpg";
								$("#myphoto").attr("src", s);
							});
						</script>

					</td>
				</tr>
				<tr>
					<th width="100" bgcolor="#ffc">상품가격</th>
					<td><input type="text" name="price" required="required"
						class="form-control" placeholder="상품가격"></td>
				</tr>

				<tr>
					<th width="100" bgcolor="#ffc">입고일</th>
					<td><input type="date" name="ipgoday" value="2023-02-10"
						class="form-control"></td>
				</tr>

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-info">상품저장</button>
						<button type="button" class="btn btn-success"
							onclick="location.href='shoplist.jsp'">상품목록</button>
					</td>

				</tr>

			</table>
		</form>
	</div>
</body>
</html>