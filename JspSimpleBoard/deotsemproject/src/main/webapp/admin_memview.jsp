<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="jquery-3.6.0.js"></script>
    
    

<script type="text/javascript">


function checkForm() {
    var form = document.joinform;
    var regemail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	 var regidpwd = /^[a-zA-Z0-9]{4,12}$/;
	 
    
  if (form.jname.value == "") {
   	   alert("이름을 입력해주세요.");
   	   return false;
   	  }
	 
  if(form.id.value =="") {
		 alert("아이디를 입력해 주세요.");
	     return false;
		 }
	 
  if (form.id.value.length<6 || form.id.value.length>10) {
         alert("아이디를 6~10자까지 입력해주세요.");
         return false; }
	 
  if(regidpwd.test(form.id.value)==false){
	
		 
		 alert("아이디를 조건에 맞게 입력해 주세요.");
		 return false; 
		 }
	 
  if(form.password1.value =="") {
		 alert("패스워드를 입력해 주세요.");
	
		 return false;
		 }
   
  if(form.password2.value =="") {
		 alert("패스워드를 입력해 주세요.");
	
		 return false;
		 }
  
   if (form.password1.value.length<6 || form.password1.value.length>10) {
         alert("패스워드를 6~10자까지 입력해주세요.");
         return false; }
	 
   if (form.password2.value.length<6 || form.password2.value.length>10) {
       alert("패스워드를 6~10자까지 입력해주세요.");
       return false; }
	 
   if(form.password1.value != form.password2.value ){
	   alert("동일한 패스워드를 입력해주세요.");
       return false;  
   }

     
    if (form.email.value == "") {
      	    alert("이메일을 입력해주세요.");
      	   return false;
      	  }
    
    if(regemail.test(form.email.value)==false){
		 //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우
		 
		 alert("이메일을 정확하게 입력해주세요.");
		 return false; 
		 }
		 
     
     
     if (form.addr1.value == "" ) {
         alert("주소를 입력해주세요.");
         return false; }
     if (form.addr2.value == "" ) {
         alert("주소를 입력해주세요.");
         return false; }
     
     if (form.addr3.value == "" ) {
         alert("상세 주소를 입력해주세요.");
         return false; }
     

   
     if (form.jphone.value == "") {
	    alert("전화번호를 입력해주세요.");
	   return false;
	  }
   
   
   if (form.jphone.value.length != 11 ) {
       alert("전화번호는 11자리 숫자로 입력해주세요.");
       return false; }
   

	 form.submit();
}

    
    
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
        // 우편번호와 주소 정보를 해당 필드에 넣는다.
           document.getElementById('addr1').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('addr2').value = fullRoadAddr;
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}



 
</script>


 <%

 request.setCharacterEncoding("UTF-8");
 
 String id = request.getParameter("id");
 
 String pwd = "";
 String name = "";
 String email = "";
 String add1 = "";
 String add2 = "";
 String add3 = "";
 String birthyear = "";
 String birthmonth = "";
 String birthday = "";
 String phone = "";
 
 
 Connection conn = null;
 
		String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
		String dbid = "root";
		String dbpwd ="multi2020";
		String sql ="";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(dburl,dbid,dbpwd);
		
		sql = "select * from shop_db " + "where id = ?";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1,id);
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()) {
			pwd = rs.getString("pwd");
			name = rs.getString("name");
			email = rs.getString("email");
			add1 = rs.getString("add1");
			add2 = rs.getString("add2");
			add3 = rs.getString("add3");
			birthyear = rs.getString("birthyear");
			birthmonth = rs.getString("birthmonth");
			birthday = rs.getString("birthday");
			phone = rs.getString("phone");

		}
		rs.close();
		pst.close();
 
 
  

%>

           <div class="join_Form">
       <div class="title"><h3><%=name %>님의 회원정보<h3> </div>
        <div class="page-body">
	<form name="joinform" action="update_ok.jsp" method="post" autocomplete="off">
        <ul class="join-form">
            <li>
                <label>이름</label>
                <input type="text" name="jname" id="jname" value="<%=name%>"  class="jion_resist_jname" size="15" maxlength="30" />
            </li>
            <li>
                <label>아이디</label>
                <input type="text" name="id" id="id" value="<%=id%>"  class="check" size="10" maxlength="12" >
   
            </li>
            <li>
                <label>비밀번호</label>
                <input type="text" name="password1" id="password1" value="<%=pwd%>"  class="jion_resist_pwd1" size="15" maxlength="20" autocomplete="off">
            </li>
            <li>
                <label>비밀번호 확인</label>
                <input type="text" name="password2" id="password2" value="<%=pwd%>"   class="jion_resist_pwd2" size="15" maxlength="20" autocomplete="off">
            </li>
            <li>
                <label>이메일</label>
         
                <input type="text" name="email" id="email" value="<%=email%>"   class="join_resist_email" size="20" maxlength="35" id="email" value=""   />
            </li>
            <li>
                <label>주소</label>
			 <div class="form-group">
			<div class="fieldaddr"><input type="text" class="form-control" name="addr1" id="addr1" value="<%=add1%>"   autocomplete="off"><input type="button" onclick="execPostCode();" value="주소 찾기"></div></div>
			 <div class="form-group">
		    <div class="field"><input type="text" class="form-control" name="addr2" id="addr2" value="<%=add2%>"  autocomplete="off"></div></div>
		     <div class="form-group">
		    <div class="field"><input type="text" class="form-control" name="addr3" id="addr3" value="<%=add3%>"  placeholder="* 동, 호수가 있는경우 입력 필수" autocomplete="off"></div>
			</div>
			      </li>

                <li class="birth">
                <dl class="type1">
  
                    <input type="text" name="birthyear" id="birthyear" class="jion_resist_year" value="<%=birthyear %>" size="6" maxlength="5" autocomplete="off"> 년
              
                    <input type="text" name="birthmonth" id="birthmonth" class="jion_resist_month" value="<%=birthmonth %>" size="4" maxlength="4" autocomplete="off"> 월
 
                    <input type="text" name="birthday" id="birthday" class="jion_resist_day" value="<%=birthday %>" size="4" maxlength="4" autocomplete="off"> 일
    
                 </dl>
            </li>


            <label>휴대폰번호</label>
            <input type="text" name="jphone" id="jphone" value="<%=phone%>" class="join_resist_phone" size="15" maxlength="30" value="" />
            
        <div class="field"><input type=button onClick="checkForm()" value="수정하기"></div>
		<div class="field"><input type=button onClick="location.href='admin_memlist.jsp'" value="뒤로가기"></div>
	

 

 

</body>
</html>