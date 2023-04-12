<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="text/javascript" src="jquery-3.6.0.js"></script>
    
    
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="css/aos.css">
    <link rel="stylesheet" type="text/css" href="css/shopbrand.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/loginform.css">
    <link rel="stylesheet" type="text/css" href="css/notice.css">
    <link rel="stylesheet" type="text/css" href="css/mypage.css">
 
    <link rel="stylesheet" type="text/css" href="css/reset.css">

    <link rel="stylesheet" type="text/css" href="css/joinmobile.css">

    <link rel="stylesheet" type="text/css" href="css/selcectbox.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jq.js"></script>
    <script type="text/javascript" src="js/aos.js"></script>
    <script type="text/javascript" src="js/scrolloverflow.js"></script>

    <script type="text/javascript" src="js/jquery.selectbox-0.2.min.js"></script>

    <script type="text/javascript" src="js/header.1.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/footer.js"></script>

<script type="text/javascript">
    
    
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


<title></title>
</head>
<body>
<%
 String id = (String)session.getAttribute("id");
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
 try {
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
 }
 
  catch(SQLException e){
	  out.println(e.getMessage());
	  e.printStackTrace();
  }

%>

                      <!-- 메뉴바 -->


                        <div id="contentWrapper">
                            <div id="contentWrap">
                                <div id="content">


                                    <!-- container -->
                                    <div id="container">
                                        <!-- contents -->
                                        <div id="contents">

                                            <div class="cate-wrap">
                                                <div class="bcate"><a href="" class="-mos">JOIN US</a></div>
                                            </div>

                                            <!-- main -->
                                            <main id="join">
                                                <form name="ipinInForm" method="post">
                                                    <input type="hidden" name="IDPCODE" value="" />
                                                    <input type="hidden" name="IDPURL" value="" />
                                                    <input type="hidden" name="CPCODE" value="" />
                                                    <input type="hidden" name="CPREQUESTNUM" value="" />
                                                    <input type="hidden" name="RETURNURL" value="" />
                                                    <input type="hidden" name="WEBPUBKEY" value="" />
                                                    <input type="hidden" name="WEBSIGNATURE" value="" />
                                                    <input type="hidden" name="FILLER01" value="" />
                                                    <input type="hidden" name="FILLER02" value="JOIN" />
                                                </form>
                                                <form name="ipinOutForm" method="post" action="/m/join_us.action.html">
                                                    <input type="hidden" name="popup" value="" />
                                                    <input type="hidden" name="cur_page" value="" />
                                                    <input type="hidden" name="type" value="ok" />
                                                    <input type="hidden" name="ipintype" value="" />
                                                    <input type="hidden" name="brandcode" value="">
                                                    <input type="hidden" name="first" value="">
                                                    <input type="hidden" name="data_third_party_agree" value="" />
                                                    <input type="hidden" name="data_trust_agree" value="" />
                                                    <input type="hidden" name="data_privacy_agree" value="" />
                                                    <input type="hidden" name="realname" />
                                                    <input type="hidden" name="encdata" />
                                                    <input type="hidden" name="member_type" value="SIMPLE" />
                                                </form>
                                                <form name="form1" method="post" id="join_form"
                                                    action="/m/join_contract.html" autocomplete="off">
                                                    <input type="hidden" name="resno" value="" />
                                                    <input type="hidden" name="cur_page" value="" />
                                                    <input type="hidden" name="brandcode" value="" />
                                                    <input type="hidden" name="sslid" value="aake" />
                                                    <input type="hidden" name="sslip" value="www.aake.co.kr" />
                                                    <input type="hidden" name="haddress" id="haddress" value="" />
                                                    <input type="hidden" name="msecure_key" value="" />
                                                    <input type="hidden" name="loginkeyid" value="" />
                                                    <input type="hidden" name="idcheck" value="" />
                                                    <input type="hidden" name="emailcheck">
                                                    <input type="hidden" name="junk_member_ok" value="" />
                                                    <input type="hidden" name="hiddenres" value="" />
                                                    <input type="hidden" name="mem_type" value="SIMPLE">
                                                    <input type="hidden" name="member_join_type" value="NEW" />
                                                    <input type="hidden" name="member_join_minor" value="N" />
                                                    <input type="hidden" name="use_company_num" value="Y" />
                                                    <input type="hidden" name="company_num_modify" value="N" />
                                                    <input type="hidden" name="admin_type" value="N" />
                                                    <input type="hidden" name="old_company_num1" value="">
                                                    <input type="hidden" name="old_company_num2" value="">
                                                    <input type="hidden" name="old_company_num3" value="">
                                                    <input type="hidden" name="old_email" id="old_email" value="">
                                                    <input type="hidden" name="etc_phone" id="etc_phone" value="" />
                                                    <input type="hidden" name="simple_login" value="" />
                                                    <input type="hidden" name="app_os" value="" />
                                                    <input type="hidden" name="return_url" value="">
                                                    <input type="hidden" name="encdata" value="" />
                                                    <input type="hidden" name="ipintype" value="" />
                                                    <input type="hidden" name="resultCd" value="" /><input type="hidden"
                                                        name="type" value="ins" />
                                                    <input type="hidden" name="first" value="" />
                                                    <input type="hidden" name="join_type" value="" />
                                                    <input type="hidden" name="data_third_party_agree" value="" />
                                                    <input type="hidden" name="data_trust_agree" value="" />
                                                    <input type="hidden" name="data_privacy_agree" value="" /><input
                                                        type="hidden" name="original_mem_type" value="PERSON">


  <form name="joinform" action="joinproc.jsp" method="post" autocomplete="off">

                                                        <div class="join">
                                                            <nav class="sequence">
                                                                <ol class="clearFix">
                                                                    <li class="now">
                                                                        <div class="fa-stack fa-2x"><span
                                                                                class="fa fa-circle fa-stack-2x"></span><span
                                                                                class="fa fa-pencil-square-o fa-stack-1x fa-inverse"></span>
                                                                        </div>정보입력
                                                                    </li>
                                                                </ol>
                                                            </nav>
                                                            <div class="tableBox">
                                                                <table>
                                                                    <colgroup>
                                                                        <col width="90" />
                                                                        <col width="*" />
                                                                    </colgroup>
                                                                    <tbody>
                                                                        <tr>
                                                                            <th>이름</th>
                                                                            <td>
                                                                                <input type="text"
                                                                                    class="MS_input_txt txt-input"
                                                                                    name="jname" id="jname"
                                                                                    value="<%=name%>"
                                                                                     size="15"
                                                                                    maxlength="30" />
                                                                                <p><span
                                                                                        class="MK_join_name_check_area MK_no_confirm"></span>
                                                                                </p>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>아이디</th>
                                                                            <td>
                                                                                <input type="text"
                                                                                    class="MS_input_txt txt-input"
                                                                                    name="id" id="id" value="<%=id%>"
                                                                                     size="10"
                                                                                    maxlength="12">

                                                                                <p>(회원아이디 영문숫자만 사용가능(숫자만으로 아이디 사용금지)</p>
                                                                                <p><span
                                                                                        class="MK_join_id_check_area MK_no_confirm"></span>
                                                                                </p>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>비밀번호</th>
                                                                            <td>
                                                                                <input type="password"
                                                                                    onkeyup="check_pwd_length(this, 'password');" class=" MS_input_txt txt-input"
                                                                                    name="password1" id="password1"
                                                                                    value="<%=pwd%>"
                                                                                    size="15"
                                                                                    maxlength="20" autocomplete="off">


                                                                                <p><span
                                                                                        class="MK_join_password_check_area MK_no_confirm">비밀번호는
                                                                                        4~16자리</span></p>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <th>이메일</th>
                                                                            <td>
                                                                                <input type="text" name="email"
                                                                                    id="email" value="<%=email%>"
                                                                                    class="MS_input_txt MS_input_txt06 txt-input"
                                                                                    size="20"
                                                                                    maxlength="35" id="email"
                                                                                    value="" />

                                                                                <p><span
                                                                                        class="MK_join_email_check_area MK_no_confirm"></span>
                                                                                </p>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <th>주소</th>
                                                                            <td>
                                                                                <div class="form-group">
                                                                                    <div class="fieldaddr"><input
                                                                                            type="text"
                                                                                           class=" MS_input_txt txt-input"
                                                                                            name="addr1" id="addr1"
                                                                                            value="<%=add1%>"
                                                                                            autocomplete="off"><input
                                                                                            type="button"
                                                                                            onclick="execPostCode();"
                                                                                            value="주소 찾기"></div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <div class="field"><input
                                                                                            type="text"
                                                                                            class=" MS_input_txt txt-input"
                                                                                            name="addr2" id="addr2"
                                                                                            value="<%=add2%>"
                                                                                            autocomplete="off"></div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <div class="field"><input
                                                                                            type="text"
                                                                                            class=" MS_input_txt txt-input"
                                                                                            name="addr3" id="addr3"
                                                                                            value="<%=add3%>"
                                                                                            placeholder="* 동, 호수가 있는경우 입력 필수"
                                                                                            autocomplete="off"></div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>

                                                                        <tr class="birth">
                                                                            <th>생년월일</th>
                                                                            <td>
                                                                                <input type="text" name="birthyear"
                                                                                    id="birthyear"
                                                                                    class="jion_resist_year"
                                                                                    value="<%=birthyear %>" size="6"
                                                                                    maxlength="5" autocomplete="off"> 년

                                                                                <input type="text" name="birthmonth"
                                                                                    id="birthmonth"
                                                                                    class="jion_resist_month"
                                                                                    value="<%=birthmonth %>" size="4"
                                                                                    maxlength="4" autocomplete="off"> 월

                                                                                <input type="text" name="birthday"
                                                                                    id="birthday"
                                                                                    class="jion_resist_day"
                                                                                    value="<%=birthday %>" size="4"
                                                                                    maxlength="4" autocomplete="off"> 일

                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>휴대폰번호</th>
                                                                            <td>

                                                                                <input type="text" name="jphone"
                                                                                    id="jphone" value="<%=phone%>"
                                                                                    class="MS_input_tel txt-input"
                                                                                   size="15"
                                                                                    maxlength="30" value="" />



                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </form>
                                            </main>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <!-- //이용약관 레이어 -->
                        </main>
                        <!-- //main -->
                    </div>
                    <!-- //contents -->
                    </div>
                    <!-- //container -->
                    </div>
                    </div>
                    </div>

                    <script>

                        $('.terms-desc dt a', '#terms_desc').on('click', function (e) {
                            e.preventDefault();
                            if ($(this).hasClass('btn-down')) {
                                $(this).removeClass('btn-down').addClass('btn-up');
                                $(this).parents('dl').find('dd').show();
                            } else {
                                $(this).removeClass('btn-up').addClass('btn-down');
                                $(this).parents('dl').find('dd').hide();
                            }
                        });
                    </script>
                    <style type="text/css">
                        [class*="holding"] {
                            font-weight: bold;
                            font-size: 13px;
                        }

                        #terms_desc .terms-desc {
                            margin-top: 30px;
                        }

                        #terms_desc .terms-desc dt {
                            position: relative;
                            margin: -1px 0;
                            height: 42px;
                            line-height: 42px;
                            padding-left: 15px;
                            border-top: 1px solid #d1d1d1;
                            border-bottom: 1px solid #d1d1d1;
                            color: #000;
                            background-color: #fff;
                            font-size: .875em;
                            font-weight: bold;
                            letter-spacing: -1px;
                        }

                        #terms_desc .terms-desc dt span {
                            font-weight: normal;
                        }

                        #terms_desc .terms-desc dt>a {
                            position: absolute;
                            top: 50%;
                            right: 15px;
                            margin-top: -5px;
                            width: 14px;
                            height: 10px;
                        }

                        #terms_desc .terms-desc dt .btn-up {
                            background: url(images/btn_h9_top.gif) no-repeat 0 0;
                            background-size: 14px 10px;
                        }

                        #terms_desc .terms-desc dt .btn-down {
                            background: url(images/btn_h9_btm.gif) no-repeat 0 0;
                            background-size: 14px 10px;
                        }

                        #terms_desc .terms-desc dd {
                            display: none;
                            padding: 15px;
                            border-top: 1px solid #d1d1d1;
                            border-bottom: 1px solid #d1d1d1;
                            background: #f1f1f1;
                        }

                        #terms_desc .terms-desc dd textarea {
                            width: 100%;
                            height: 150px;
                            padding: 5px 10px;
                            border: 1px solid #e1e1e1;
                            background: #fff;
                            box-sizing: border-box;
                            border-radius: 0;
                            font-size: .75em;
                            letter-spacing: -1px;
                            line-height: 1.5;
                        }

                        #terms_desc .terms-desc dd .sect {
                            width: 100%;
                            overflow-x: hidden;
                            overflow-y: auto;
                            padding: 10px;
                            border: 1px solid #e1e1e1;
                            background: #fff;
                            box-sizing: border-box;
                        }

                        #terms_desc .terms-desc dd .sect table {
                            width: 100%;
                        }

                        #terms_desc .terms-desc dd .sect th,
                        #terms_desc .terms-desc dd .sect td {
                            padding: 8px 0;
                            font-size: .75em;
                            text-align: center;
                            line-height: 1.25;
                        }

                        #terms_desc .terms-desc dd .sect th {
                            background: #a0a0a0;
                            color: #000;
                            border-right: 1px solid #fff;
                            color: #fff;
                            font-weight: normal;
                        }

                        #terms_desc .terms-desc dd .sect td {
                            border-bottom: 1px solid #a0a0a0;
                            color: #666;
                            font-size: .688em;
                            vertical-align: middle;
                        }

                        [class*="holding"] {
                            font-weight: bold;
                            font-size: 13px;
                        }

                        #terms_agree input[type="checkbox"] {
                            vertical-align: middle;
                            border-radius: 0;
                            position: relative;
                            margin-top: -1px;
                        }

                        #terms_agree .terms-agree dl {
                            font-size: .75em;
                        }

                        #terms_agree .terms-agree dt {
                            margin-top: 10px;
                            height: 35px;
                            line-height: 35px;
                            padding-left: 10px;
                            border-bottom: 1px solid #cacaca;
                            color: #000;
                            font-weight: bold;
                            letter-spacing: -1px;
                        }

                        #terms_agree .terms-agree dd {
                            margin: 0 10px;
                            padding: 15px 10px;
                            border-bottom: 1px dashed #dadada;
                        }

                        #terms_agree .terms-agree dd:last-child {
                            border-bottom: 0;
                        }

                        #terms_agree .terms-agree dd strong {
                            color: #000;
                            font-weight: bold;
                            letter-spacing: -1px;
                        }

                        #terms_agree .terms-agree dd .txt {
                            margin-top: 10px;
                            color: #999;
                            font-size: .938em;
                            letter-spacing: -1px;
                            white-space: nowrap;
                        }

                        #terms_agree .terms-agree dd .txt p {
                            margin-top: 8px;
                            color: #000;
                        }

                        #terms_agree .terms-agree dd .lst:after {
                            content: '';
                            display: block;
                            clear: both;
                        }

                        #terms_agree .terms-agree dd .lst li {
                            float: left;
                            width: 50%;
                            list-style: none;
                            padding: 5px 0;
                            white-space: nowrap;
                        }

                        #terms_agree .terms-agree dd .lst li a {
                            text-decoration: underline;
                        }

                        #terms_agree .terms-agree .btn-agree {
                            display: block;
                            height: 50px;
                            line-height: 50px;
                            margin: 15px 10px 0;
                            background: #008cff;
                            border-bottom: 1px solid #0070cc;
                            border-radius: 2px;
                            color: #fff;
                            font-weight: bold;
                            letter-spacing: -1px;
                            text-align: center;
                        }

                        .txtRed {
                            color: #FF0000;
                        }
                    </style>

                    <div class="section fp-auto-height" id="section3">
                        <!-- 하단 시작 -->
                        <footer>
                            <div id="bottom">
                                <ul>
                                    <div class="footer">
                                        <div class="left upper">
                                            <!-- 텍스트로고  <h1><a href="/">Deotsem</a></h1>-->
                                            <!-- 이미지로고 -->
                                            <h1><a href=""><img src="images/logoimg.png" /></a></h1>

                                            <a href="">About us</a>
                                            <a href="">Contact</a>
                                        </div>
                                        <!-- left -->
                                    </div>
                                    <!-- footer -->

                                    <div class="inner upper">

                                        <ul class="foot_info1">
                                            <li><span><b>OPEN.</b></span><span>Mon-Fri 13:30~18:00</span><span>Weekend,
                                                    Holiday
                                                    off</span></li>

                                            <li><span><b>BANK INFO.</b> </span><span>국민 000000-00-000000 예금주: 덧셈 </span>
                                            </li>
                                        </ul>

                                        <ul class="foot_info">
                                            <li><span>Company</span><span>덧셈</span></li>
                                            <li><span>Ceo</span><span>안정빈 유지혜</span></li>
                                            <li><span>E-MAIL deotsem@naver.com</span></li>
                                            <li><span>Business License</span><span>000-00-00000 [check]</span>
                                                <span>2019
                                                    화성장안</span>
                                            </li>

                                            <li><span>Address</span><span> 경기도 화성시 봉담읍 상리 1182 덧셈 </span></li>
                                            <li><span>Privacy Manager</span><span>안정빈 유지혜</span> </li>
                                            <li class="copy ft_font1">
                                                <span><a>Copyright</span>
                                                <span><b>덧셈</b></span>
                                                <span>allrights reserved.</a></span>
                                                <span></span>
                                            </li>
                                        </ul>
                                    </div><!-- //inner-->
                                </ul>
                            </div>
                        </footer>
                        <div id="mask"></div>
                        <!-- //하단 끝 -->


                    </div>
                    <!-- //끝 -->
                    </div>
                    </div>
                    </div>

	</body>
	</html>