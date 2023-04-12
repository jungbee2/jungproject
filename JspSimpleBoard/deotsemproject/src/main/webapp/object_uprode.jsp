<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script>

 function checkForm() {
     var form = document.uprode;

     if (form.item.value.length == 0) {
      form.id.focus();
      alert('품목을 정해주세요.');
      return false;
    }

    
     else if (form.pwd.value.length == 0) {

      alert('회원 비밀번호를 입력하세요.');
      return false;
    }
     
     else if (form.objectphoto.value.length == 0) {
        
         alert('이미지를 등록해 주세요.');
         return false;
       }
     
     else if (form.objectname.value.length == 0) {
         form.pwd.focus();
         alert('상품 이름을 입력하세요.');
         return false;
       }
     
     else if (form.objectprice.value.length == 0) {
         form.pwd.focus();
         alert('상품 가격을 입력하세요.');
         return false;
       }
     
     else if (form.objectexp1.value.length == 0) {
         form.pwd.focus();
         alert('상품 설명을 입력하세요.');
         return false;
       }
     
     else if (form.objectexp2.value.length == 0) {
         form.pwd.focus();
         alert('상품 설명 이미지를 등록해 주세요.');
         return false;
       }
     
     else if (form.objectvolume.value.length == 0) {
         form.pwd.focus();
         alert('상품 수량을 입력하세요.');
         return false;
       }
  form.submit();
}
	 
 </script>
</head>
<body>

<caption>OBJECT UPRODE</caption>
<form name="uprode" action="uprode_ok.jsp" method="post"  autocomplete="off">
 <table>
 
 <tr>
 <td>상품 품목</td>
 <td><select name="item">
 <option value="ring">ring</option>
 <option value="earring">earring</option>
 <option value="necklace">necklace</option>
 <option value="bracelet">bracelet</option>
 <option value="acc">acc</option>
 </select></td>
 </tr>
 <tr> 
 <td>상품 이미지</td>
 <td><input type="file" name="objectphoto" id="objectphoto"></td>
</tr>

<tr> 
 <td>상품 이름</td>
 <td><input type="text" name="objectname" id="objectname"></td>
</tr>
 
<tr> 
 <td>상품 가격</td>
 <td><input type="text" name="objectprice" id="objectprice"></td>
</tr>

<tr> 
 <td>상품 설명</td>
 <td><textarea name="objectexp1" cols="50" rows="13"></textarea></td>
</tr>
 
<tr> 
 <td>상품 소개 이미지</td>
 <td><input type="file" name="objectexp2" id="objectexp2"></td>
</tr>


<tr>
 <td>재고 수량</td>
 <td><input type="text" name="objectvolume" id="objectvolume"></td>
</tr>
 
 <tr>
  <td colspan="2" >
  <input type="button" value="등록"  onClick="checkForm()">
  <input type="button" value="취소" onClick="">
</table>
</form>

</body>
</html>