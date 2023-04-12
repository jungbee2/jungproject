<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="uprode.Uprode" %>
<%@ page import="uprode.UprodeDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script>

 function checkForm() {
     var form = document.uprodeform;
     
     if (form.category.value == "") {
     	   alert("상품 품목을 선택해주세요.");
     	   return false;
     	  }
  	 
     if (form.photo.value == "") {
     	   alert("사진을 업로드해주세요.");
     	   return false;
     	  }
     
     if (form.name.value == "") {
   	   alert("이름을 입력해주세요.");
   	   return false;
   	  }
  	 
     if (form.price.value == "") {
   	   alert("가격을 입력해주세요.");
   	   return false;
   	  }
     
     if (form.exp1.value == "") {
   	   alert("상품 상세설명을 입력해주세요.");
   	   return false;
   	  }
     
     if (form.exp2.value == "") {
     	   alert("상품 상세이미지를 업로드해주세요.");
     	   return false;
     	  }
     
     if (form.volume.value == "") {
     	   alert("재고를 입력해주세요.");
     	   return false;
     	  }
     
     form.submit();
       }


	 
 </script>
</head>
<body>

  <%
  
  String id = null;
  if (session.getAttribute(id) != null) {
	  id = (String) session.getAttribute("id");
  }

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

  Uprode uprode = new UprodeDAO().getUprode(num);
  %>

<caption>OBJECT UPRODE</caption>
<form name="uprodeform" action="objectmodify_ok.jsp?num=<%=num%>" method="post"  enctype="multipart/form-data" autocomplete="off">
<table>
 <tr>
 <td>상품 품목</td>
 <td><select name="category">
 <option value="ring">RING</option>
 <option value="earring">EARRING</option>
 <option value="necklace">NECKLACE</option>
 <option value="bracelet">BRACELET</option>
 <option value="acc">ACC</option>
 </select>
 </td>
 </tr>
 <tr> 
 <td>상품 이미지</td>
 <td><input type="file" name="photo" id="photo" ></td>
</tr>

<tr> 
 <td>상품 이름</td>
 <td><input type="text" name="name" id="name" value="<%=uprode.getName()%>"></td>
</tr>
 
<tr> 
 <td>상품 가격</td>
 <td><input type="text" name="price" id="price" value="<%=uprode.getPrice()%>"></td>
</tr>

<tr> 
 <td>상품 설명</td>
 <td><textarea name="exp1" cols="50" rows="13" ><%=uprode.getExp1()%></textarea></td>
</tr>
 
<tr> 
 <td>상품 소개 이미지</td>
 <td><input type="file" name="exp2" id="exp2"></td>
</tr>


 <tr> 
 <td>서브 상품 이미지1</td>
 <td><input type="file" name="photo2" id="photo"></td>
</tr>

 <tr> 
 <td>서브 상품 이미지2</td>
 <td><input type="file" name="photo3" id="photo"></td>
</tr>

 <tr> 
 <td>서브 상품 이미지3</td>
 <td><input type="file" name="photo4" id="photo"></td>
</tr>


<tr>
 <td>재고 수량</td>
 <td><input type="text" name="volume" id="volume" value="<%=uprode.getVolume()%>"></td>
</tr>
 
 <tr>
  <td colspan="2" >
  <input type="button" value="등록"  onClick="checkForm()">
  <input type="button" value="취소" OnClick="window.location='object_list.jsp'">
</td>
</tr>

</table>
</form>


</body>
</html>