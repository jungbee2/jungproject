<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>

<%

String id = null;
if (session.getAttribute(id) != null) {
	  id = (String) session.getAttribute("id");
}


%>
<meta charset="utf-8">
    <title>DEOTSEM</title>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/index_footer.css">
    <link rel="stylesheet" type="text/css" href="css/aos.css">
    <link rel="stylesheet" type="text/css" href="css/loginform.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">

    <link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/return.js"></script>
    <script type="text/javascript" src="js/jq.js"></script>
    <script type="text/javascript" src="js/aos.js"></script>
    <script type="text/javascript" src="js/jquery.fullPage.js"></script>
    <script type="text/javascript" src="js/rightbanner.js"></script>
    <script type="text/javascript" src="js/fbevents.js"></script>
    <script type="text/javascript" src="js/scrolloverflow.js"></script>
    <script type="text/javascript" src="js/slider.js"></script>

    <script type="text/javascript" src="js/header.1.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/footer.js"></script>

</head>

<body>
 <div id="wrap">

        <span id='solutiontype' style='display:none;'>SHOP</span>
        <span id='sfsnapfit_store_id' style='display:none'>DEOTSEM</span>
        <div><input id="sf_draw_type" type="hidden" value="pc">
            <input id="sf_store_name" type='hidden' value='DEOTSEM'>
        </div>

        <aside id="asideMenu">

            <div class="close">
                <span id="asideClose" class="mos05" onclick="closeNav()">
                    <i class="xi-close-thin" alt="메뉴"></i>
                </span>
            </div>

            <div class="logo">
                <img src="images/logo.png" alt="로고이미지">
            </div>
            
            <!-- 로그인영역 -->
            <div class="loginBox">
                <ul>
          <li>
                         <%  if ( id == null) { %>
                        <a href="login.jsp">LOGIN</a>
                        <% 
                        
                         } else { %>
                        <a href="logout.jsp">LOGOUT</a>
                        <% } %>
                        </li>
                    <li class="join">
                        <a href="join.jsp">JOIN US</a>
                    </li>
                    <li>
                    <%  if ( id == "admin1") { %>
                        <a href="admin_mypage.jsp">MYPAGE</a>
                        <% }  else { %>
                        <a href="mypage.jsp">MYPAGE</a>
                        <% } %>
                    </li>
                </ul>
            </div>

            <div class="navCategory">
                <nav>
                    <ul>
                        <!-- 퀵메뉴 노출개수 -->
                        <li>
                            <a href="index.jsp">DEOTSEM</a>
                            <span class="xi xi-angle-down-min"></span>

                            <ul>
                                <li>
                                    <a href="about.jsp">ABOUT</a>
                                </li>
                                <li>
                                    <a href="notice_list.jsp">NOTICE</a>
                                </li>
                                <li>
                                    <a href="qna_list.jsp">Q&A</a>
                                </li>
                                <li>
                                    <a href="review_list.jsp">REVIEW</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="made.jsp">[D]MADE</a>
                        </li>

                        <li>
                            <a href="all.jsp">ALL</a>
                        </li>

                        <li>
                            <a href="new.jsp">NEW</a>
                        </li>

                       <li>
                        <a href="ring.jsp?category=RING">RING</a>
                    </li>

                    <li>
                        <a href="earring.jsp?category=EARRING">EARRING</a>
                    </li>

                    <li>
                        <a href="neck.jsp?category=NECKLACE">NECKLACE</a>
                    </li>

                    <li>
                        <a href="bracelet.jsp?category=BRACELET">BRACELET</a>
                    </li>

                    <li>
                        <a href="acc.jsp?category=ACC">ACC</a>
                    </li>


                        <script>
                            jQuery("aside nav .xi").click(function () {
                                jQuery(this).parent().siblings().children("ul").hide();
                                jQuery(this).parent().siblings().children(".xi-angle-down-min").removeClass("fa-rotate-180");
                                jQuery(this).next("ul").toggle();

                                if (jQuery(this).text() == "+") {
                                    jQuery(this).text("-");
                                } else if (jQuery(this).text() == "-") {
                                    jQuery(this).text("+");
                                } else {
                                    jQuery(this).toggleClass("fa-rotate-180");
                                }
                                return false
                            });
                        </script>
                         <!-- 모바일 버전 메뉴 -->
                </nav>
            </div>
        </aside>
        <!-- //사이드 메뉴 - 끝 -->

        <div id="header2">
            <!-- 로고영역 -->
            <div class="logo">
                <a href="index.jsp">
                    <img src="images/biglogo.png" alt="로고이미지">
                </a>
            </div>
            <!-- 메뉴버튼 -->
            <p class="category" onclick="openNav()"><a><span></span></a></p>
            <!-- 장바구니 -->
            <p class="cart">
                <a href="cart.jsp">
                    <span class="css-cart"></span>
                    <span class="count1">
                        <span id="user_basket_quantity" class="user_basket_quantity"></span>
                    </span>
                </a>
            </p>
        </div>
        <!-- //header2 -->

        
        
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
                                <form name="form1" method="post" id="join_form" action="/m/join_contract.html"
                                    autocomplete="off">
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
                                    <input type="hidden" name="resultCd" value="" /><input type="hidden" name="type"
                                        value="ins" />
                                    <input type="hidden" name="first" value="" />
                                    <input type="hidden" name="join_type" value="" />
                                    <input type="hidden" name="data_third_party_agree" value="" />
                                    <input type="hidden" name="data_trust_agree" value="" />
                                    <input type="hidden" name="data_privacy_agree" value="" /><input type="hidden"
                                        name="original_mem_type" value="PERSON">


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
                                                            <input type="text" name="name" id="name" value=""
                                                                class="MS_input_txt txt-input" size="15"
                                                                maxlength="30" />
                                                            <p><span
                                                                    class="MK_join_name_check_area MK_no_confirm"></span>
                                                            </p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>아이디</th>
                                                        <td>
                                                            <input type="text" name="id" id="id" value=""
                                                                class="MS_input_txt txt-input" size="10"
                                                                maxlength="12" />
                                                            <p>(회원아이디 영문숫자만 사용가능(숫자만으로 아이디 사용금지)</p>
                                                            <p><span class="MK_join_id_check_area MK_no_confirm"></span>
                                                            </p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>비밀번호</th>
                                                        <td>
                                                            <input type="password" name="pwd" id="pwd"
                                                                class="MS_input_txt txt-input" value="" size="15"
                                                                maxlength="20"
                                                                onkeyup="check_pwd_length(this, 'password');" />
                                                            <p><span class="MK_join_password_check_area MK_no_confirm">비밀번호는
                                                                    4~16자리</span></p>
                                                        </td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <th>이메일</th>
                                                        <td>
                                                            <input type="hidden" name="oldemail" value="" />
                                                            <input type="email" name="email" id="email"
                                                                class="MS_input_txt MS_input_txt06 txt-input"
                                                                style="width:65%" maxlength="35" id="email" value="" />
                                                            <p><span
                                                                    class="MK_join_email_check_area MK_no_confirm"></span>
                                                            </p>
                                                        </td>
                                                    </tr>
                                                     
                                                       <tr>
                <th>주소</th>
                <td>
			 <div class="form-group">
			<div class="fieldaddr"><input type="text" class="form-control" name="add1" id="add1"  autocomplete="off"><input type="button" onclick="execPostCode();" value="주소 찾기"></div></div>
			 <div class="form-group">
		    <div class="field"><input type="text" class="form-control" name="add2" id="add2" autocomplete="off"></div></div>
		     <div class="form-group">
		    <div class="field"><input type="text" class="form-control" name="add3" id="add3" placeholder="* 동, 호수가 있는경우 입력 필수" autocomplete="off"></div>
			</div>
			</td>
			      </tr>
			      
                                                    <tr class="birth">
                                                        <th>생년월일</th>
                                                        <td>
                                                            <dl class="type1">
                                                                <dd>
                                                                    <div class="box-select"><select name="birthyear">

                                                                            <option value="">생년</option>
                                                                            <option value=1920>1920</option>
                                                                            <option value=1921>1921</option>
                                                                            <option value=1922>1922</option>
                                                                            <option value=1923>1923</option>
                                                                            <option value=1924>1924</option>
                                                                            <option value=1925>1925</option>
                                                                            <option value=1926>1926</option>
                                                                            <option value=1927>1927</option>
                                                                            <option value=1928>1928</option>
                                                                            <option value=1929>1929</option>
                                                                            <option value=1930>1930</option>
                                                                            <option value=1931>1931</option>
                                                                            <option value=1932>1932</option>
                                                                            <option value=1933>1933</option>
                                                                            <option value=1934>1934</option>
                                                                            <option value=1935>1935</option>
                                                                            <option value=1936>1936</option>
                                                                            <option value=1937>1937</option>
                                                                            <option value=1938>1938</option>
                                                                            <option value=1939>1939</option>
                                                                            <option value=1940>1940</option>
                                                                            <option value=1941>1941</option>
                                                                            <option value=1942>1942</option>
                                                                            <option value=1943>1943</option>
                                                                            <option value=1944>1944</option>
                                                                            <option value=1945>1945</option>
                                                                            <option value=1946>1946</option>
                                                                            <option value=1947>1947</option>
                                                                            <option value=1948>1948</option>
                                                                            <option value=1949>1949</option>
                                                                            <option value=1950>1950</option>
                                                                            <option value=1951>1951</option>
                                                                            <option value=1952>1952</option>
                                                                            <option value=1953>1953</option>
                                                                            <option value=1954>1954</option>
                                                                            <option value=1955>1955</option>
                                                                            <option value=1956>1956</option>
                                                                            <option value=1957>1957</option>
                                                                            <option value=1958>1958</option>
                                                                            <option value=1959>1959</option>
                                                                            <option value=1960>1960</option>
                                                                            <option value=1961>1961</option>
                                                                            <option value=1962>1962</option>
                                                                            <option value=1963>1963</option>
                                                                            <option value=1964>1964</option>
                                                                            <option value=1965>1965</option>
                                                                            <option value=1966>1966</option>
                                                                            <option value=1967>1967</option>
                                                                            <option value=1968>1968</option>
                                                                            <option value=1969>1969</option>
                                                                            <option value=1970>1970</option>
                                                                            <option value=1971>1971</option>
                                                                            <option value=1972>1972</option>
                                                                            <option value=1973>1973</option>
                                                                            <option value=1974>1974</option>
                                                                            <option value=1975>1975</option>
                                                                            <option value=1976>1976</option>
                                                                            <option value=1977>1977</option>
                                                                            <option value=1978>1978</option>
                                                                            <option value=1979>1979</option>
                                                                            <option value=1980>1980</option>
                                                                            <option value=1981>1981</option>
                                                                            <option value=1982>1982</option>
                                                                            <option value=1983>1983</option>
                                                                            <option value=1984>1984</option>
                                                                            <option value=1985>1985</option>
                                                                            <option value=1986>1986</option>
                                                                            <option value=1987>1987</option>
                                                                            <option value=1988>1988</option>
                                                                            <option value=1989>1989</option>
                                                                            <option value=1990>1990</option>
                                                                            <option value=1991>1991</option>
                                                                            <option value=1992>1992</option>
                                                                            <option value=1993>1993</option>
                                                                            <option value=1994>1994</option>
                                                                            <option value=1995>1995</option>
                                                                            <option value=1996 selected>1996</option>
                                                                            <option value=1997>1997</option>
                                                                            <option value=1998>1998</option>
                                                                            <option value=1999>1999</option>
                                                                            <option value=2000>2000</option>
                                                                            <option value=2001>2001</option>
                                                                            <option value=2002>2002</option>
                                                                            <option value=2003>2003</option>
                                                                            <option value=2004>2004</option>
                                                                            <option value=2005>2005</option>
                                                                            <option value=2006>2006</option>
                                                                            <option value=2007>2007</option>
                                                                            <option value=2008>2008</option>
                                                                            <option value=2009>2009</option>
                                                                            <option value=2010>2010</option>
                                                                            <option value=2011>2011</option>
                                                                            <option value=2012>2012</option>
                                                                            <option value=2013>2013</option>
                                                                            <option value=2014>2014</option>
                                                                            <option value=2015>2015</option>
                                                                            <option value=2016>2016</option>
                                                                            <option value=2017>2017</option>
                                                                            <option value=2018>2018</option>
                                                                            <option value=2019>2019</option>
                                                                            <option value=2020>2020</option>
                                                                            <option value=2021>2021</option>
                                                                        </select></div>
                                                                </dd>
                                                                <dd>
                                                                    <div class="box-select"><select name="birthmonth">
                                                                            <option value="">월</option>
                                                                            <option value="01">1</option>
                                                                            <option value="02">2</option>
                                                                            <option value="03">3</option>
                                                                            <option value="04">4</option>
                                                                            <option value="05">5</option>
                                                                            <option value="06">6</option>
                                                                            <option value="07">7</option>
                                                                            <option value="08">8</option>
                                                                            <option value="09">9</option>
                                                                            <option value="10">10</option>
                                                                            <option value="11">11</option>
                                                                            <option value="12">12</option>
                                                                        </select></div>
                                                                </dd>
                                                                <dd>
                                                                    <div class="box-select"><select name="birthdate">
                                                                            <option value="">일</option>
                                                                            <option value="01">1</option>
                                                                            <option value="02">2</option>
                                                                            <option value="03">3</option>
                                                                            <option value="04">4</option>
                                                                            <option value="05">5</option>
                                                                            <option value="06">6</option>
                                                                            <option value="07">7</option>
                                                                            <option value="08">8</option>
                                                                            <option value="09">9</option>
                                                                            <option value="10">10</option>
                                                                            <option value="11">11</option>
                                                                            <option value="12">12</option>
                                                                            <option value="13">13</option>
                                                                            <option value="14">14</option>
                                                                            <option value="15">15</option>
                                                                            <option value="16">16</option>
                                                                            <option value="17">17</option>
                                                                            <option value="18">18</option>
                                                                            <option value="19">19</option>
                                                                            <option value="20">20</option>
                                                                            <option value="21">21</option>
                                                                            <option value="22">22</option>
                                                                            <option value="23">23</option>
                                                                            <option value="24">24</option>
                                                                            <option value="25">25</option>
                                                                            <option value="26">26</option>
                                                                            <option value="27">27</option>
                                                                            <option value="28">28</option>
                                                                            <option value="29">29</option>
                                                                            <option value="30">30</option>
                                                                            <option value="31">31</option>
                                                                        </select></div>
                                                                </dd>
                                                            </dl>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>휴대폰번호</th>
                                                        <td>
                                                            <input type="tel" name="phone" form="join_form"
                                                                id="etcphone" class="MS_input_tel txt-input" size="15"
                                                                maxlength="30" value="" />
                                                        </td>
                                                    </tr>
                                                    <tr style="display:none">
                                                        <th>뉴스메일</th>
                                                        <td>
                                                            <label> <input type="radio" name="emailreceive" value="Y"
                                                                    disabled checked />
                                                                받습니다.</label>
                                                            <label> <input type="radio" name="emailreceive" value="N"
                                                                    disabled checked /> 받지 않습니다.</label>
                                                        </td>
                                                    </tr>
                                                    <tr style="display:none">
                                                        <th>SMS 안내</th>
                                                        <td>
                                                            <label> <input type="radio" name="smsreceive"
                                                                    form="join_form" value="Y" disabled checked />
                                                                받습니다.</label>
                                                            <label> <input type="radio" name="smsreceive"
                                                                    form="join_form" value="N" disabled checked /> 받지
                                                                않습니다.</label>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <ul class="join-msg">
                                            <li style="padding-bottom:5px;color:#0549bb;"><label> <input type="checkbox"
                                                        name="user_age_check" value="Y"> 14세 이상입니다. (필수)</label></li>
                                            <li>
                                                <p>* 회원가입에 필요한 최소한의 정보만 입력 받음으로써 개인정보 수집을 최소화하고 편리한 회원가입을 제공합니다.</p>
                                            </li>
                                        </ul>



                                        <!-- 이용약관 -->
                                        <div id="terms_agree">
                                            <input type="hidden" name="allnew_agree" id="allnew_agree" value="Y">
                                            <div class="terms-agree">
                                                <dl>
                                                    <dt><label><input type="checkbox" name="every_agree"
                                                                id="every_agree" value="all"
                                                                class="input-cbox new_every_agree">&nbsp; 전체동의</label>
                                                    </dt>
                                                    <dd>
                                                        <ul class="lst">
                                                            <li><label><input type="checkbox" name="yaok2" id="yaok2"
                                                                        value="Y" class="input-cbox every_agree" /> <a
                                                                        href="#termsCont1">이용약관</a></label></li>
                                                            <li>
                                                                <label><input type="checkbox" name="privacy1"
                                                                        id="privacy1" value="agree_uidB"
                                                                        class="input-cbox every_agree" /> <a
                                                                        href="#termsCont2">개인정보 수집·이용안내</a></label>
                                                            </li>


                                                        </ul>
                                                    </dd>
                                                 
                                                </dl>
                                            </div>
                                        </div> <!-- //이용약관 -->
                                    </div>



                                    <div class="pd10">
                                        <a href="javascript:send();" class="btn_Red">회원가입</a>
                                    </div>
                                    <div id='terms_desc'>
                                        <div class='terms-desc'>
                                            <dl id="termsCont1">
                                                <dt>이용약관<a class="btn-down" href="#none"></a></dt>
                                                <dd>
                                                    <textarea wrap="hard" readonly="readonly">
                                                        
                                                        
                                                        
                                                        인터넷 쇼핑몰 『덧셈』회원 약관

제1조(목적)
이 약관은 [덧셈] 회사(전자상거래 사업자)가 운영하는 [덧셈] 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.

  ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」

제2조(정의)
① “몰”이란 덧셈 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.

② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.

④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.

제3조 (약관 등의 명시와 설명 및 개정) 
① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자 등을 이용자가 쉽게 알 수 있도록 덧셈 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.

③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다.  이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. 

⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 「전자상거래 등에서의 소비자 보호지침」 및 관계법령 또는 상관례에 따릅니다.

제4조(서비스의 제공 및 변경) 
① “몰”은 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 “몰”이 정하는 업무

② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.

③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.

④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단) 
① “몰”은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.

제6조(회원가입) 
① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.

② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.

제7조(회원 탈퇴 및 자격 상실 등) 
① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청 시에 허위 내용을 등록한 경우
2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ “몰”이 회원 자격을 제한·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 “몰”은 회원자격을 상실시킬 수 있습니다.

④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.

제8조(회원에 대한 통지)
① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.

② “몰”은 불특정다수 회원에 대한 통지의 경우 1주일이상 “몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.

제9조(구매신청) 
① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “몰”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
1. 재화 등의 검색 및 선택
2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
3. 약관내용, 청약철회권이 제한되는 서비스, 배송료·설치비 등의 비용부담과 관련한 내용에 대한 확인
4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시 (예, 마우스 클릭)
5. 재화 등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의
6. 결제방법의 선택

② “몰”이 제3자에게 구매자 개인정보를 제공·위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입 시 미리 포괄적으로 동의를 받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용 목적 및 보유·이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 처리위탁의 경우 등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.

제10조 (계약의 성립)
①  “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우

② “몰”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.

③ “몰”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.

제11조(지급방법)
“몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수 있습니다. 단, “몰”은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.
1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 
2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령 시 대금지급
6. 마일리지 등 “몰”이 지급한 포인트에 의한 결제
7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제  
8. 기타 전자적 지급 방법에 의한 대금 지급 등

제12조(수신확인통지·구매신청 변경 및 취소)
① “몰”은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.
② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 “몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.

제13조(재화 등의 공급)
① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다.  이때 “몰”은 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.

② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의·과실이 없음을 입증한 경우에는 그러하지 아니합니다.

제14조(환급)
“몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.

제15조(청약철회 등)
① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다. 

② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우
4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우

③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.

④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.

제16조(청약철회 등의 효과)
① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.

② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.

③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.

④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다.

제17조(개인정보보호)
① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다. 

② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.

③ “몰”은 이용자의 개인정보를 수집·이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 

④ “몰”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다.

⑤ “몰”이 제3항과 제4항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
 
⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 처리하는 자를  최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.

⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.

⑨ “몰”은 개인정보의 수집·이용·제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.

제18조(“몰“의 의무)
① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는데 최선을 다하여야 합니다.

② “몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.

③ “몰”이 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.
④ “몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.

제19조(회원의 ID 및 비밀번호에 대한 의무)
① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고 “몰”의 안내가 있는 경우에는 그에 따라야 합니다.

제20조(이용자의 의무) 이용자는 다음 행위를 하여서는 안 됩니다.
1. 신청 또는 변경시 허위 내용의 등록
2. 타인의 정보 도용
3. “몰”에 게시된 정보의 변경
4. “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
5. “몰” 기타 제3자의 저작권 등 지적재산권에 대한 침해
6. “몰” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위

제21조(연결“몰”과 피연결“몰” 간의 관계)

① 상위 “몰”과 하위 “몰”이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 “몰”(웹 사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.

② 연결“몰”은 피연결“몰”이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.

제22조(저작권의 귀속 및 이용제한)
① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다.

② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.

③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.

제23조(분쟁해결)
① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.

② “몰”은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.

③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.

제24조(재판권 및 준거법)
① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.

② “몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.

본 약관은 2018.05.09부터 적용됩니다.
                                        
                        </textarea>
                                                </dd>
                                            </dl>


                                            <dl id="termsCont2">
                                                <dt>개인정보 수집 및 이용 안내<a class="btn-down" href="#none"></a></dt>
                                                <dd>
                                                    <input type="hidden" name="agree_uidB" id="agree_uidB" value="1_">
                                                    <div class="sect">
                                                        <table summary="">
                                                            <thead>
                                                                <tr>
                                                                    <th>구분</th>
                                                                    <th>목적</th>
                                                                    <th>항목</th>
                                                                    <th>보유기간</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td scope="row" rowspan="2">필수정보</td>
                                                                    <td>
                                                                        <div class="p10 purposeY">회원제 서비스 이용 / 본인확인
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="p10 itemsY">이름, 아이디, 비밀번호, 이메일, 휴대폰,
                                                                            생일</div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="p10 holdingY">회원탈퇴 후 즉시</div>
                                                                    </td>
                                                                </tr>
                                                                <tr>

                                                                    <td>
                                                                        <div class="p10 purpose3">㈜스냅컴퍼니</div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="p10 items3">신규 서비스 제품 개발 및 맞춤 서비스 제공
                                                                            , 이벤트 및 광고성 정보 및 참여기회 제공 / 이름 , 아이디 , 휴대전화번호
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="p10 holding3">계약종료시까지</div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td scope="row" rowspan="1">선택정보</td>
                                                                    <td>
                                                                        <div class="p10 purpose1">마케팅 활용(이벤트, 맞춤형 광고)
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="p10 items1">휴대폰, 이메일</div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="p10 holding1">회원탈퇴 후 즉시</div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </form><!-- 이용약관 레이어 -->
                                <div class="layerArea">
                                    <div id="layerPrivercyWrap">
                                        <div class="layer">
                                            <div class="layer-pop">
                                                <h3>개인정보처리방침</h3>
                                                <div class="txt">
                                                    [개인정보처리방침] <br />
                                                    <br />
                                                    [덧셈] (이하 “회사”라 함)는 정보통신망이용촉진및정보보호등에관한법률, 개인정보보호법 등 개인정보와 관련된 법령상의
                                                    규정들을 준수하고 있으며, 개인정보처리방침을 제정하여 이용자의 권익보호에 최선을 다하고 있습니다. 회사는 개인정보처리방침을
                                                    통하여 이용자의 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 회사가 어떠한 조치를 취하는지
                                                    알려드립니다. 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할
                                                    것입니다.<br />
                                                    <br />
                                                    1. 수집하는 개인정보의 항목 및 수집방법<br />
                                                    가. 수집하는 개인정보의 항목<br />
                                                    회사는 회원가입, 비회원 구매, 상담, 불량이용의 방지 등을 위해 아래와 같은 개인정보를 수집하고 있습니다. <br />
                                                    - 필수항목 : 이름, 아이디, 비밀번호, 생일, 성별, 이메일, IP Address<br />
                                                    - 선택항목 : 개인맞춤 서비스를 제공하기 위하여 회사가 필요로 하는 정보 <br />
                                                    <br />
                                                    나. 수집방법<br />
                                                    회사는 이용자들이 회원서비스를 이용하기 위해 회원으로 가입하실 때 서비스 제공을 위한 필수적인 정보들을 온라인 상에서 입력
                                                    받고 있습니다. 또한 서비스 내에서의 설문조사나 이벤트 행사 시 통계분석이나 경품 제공 등을 위해 선별적으로 개인정보
                                                    입력을 요청할 수 있습니다. 그러나, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및
                                                    신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않으며 부득이하게 수집해야 할
                                                    경우 이용자들의 사전동의를 반드시 구할 것입니다. <br />
                                                    <br />
                                                    2. 개인정보의 수집 및 이용목적<br />
                                                    가. 신규 서비스의 개발<br />
                                                    이용자들이 제공한 개인정보를 바탕으로 보다 더 유용한 서비스를 개발할 수 있습니다. 회사는 신규 서비스 개발이나 컨텐츠의
                                                    확충 시에 기존 이용자들이 회사에 제공한 개인정보를 바탕으로 개발해야 할 서비스의 우선 순위를 보다 더 효율적으로 정하고,
                                                    회사는 이용자들이 필요로 할 컨텐츠를 합리적으로 선택하여 제공할 수 있습니다.<br />
                                                    <br />
                                                    나. 회원관리<br />
                                                    회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인,
                                                    연령확인, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리, 고지사항
                                                    전달<br />
                                                    <br />
                                                    다. 마케팅 및 광고에 활용<br />
                                                    신규 서비스 개발과 이벤트 행사에 따른 정보 전달 및 맞춤 서비스 제공, 인구통계학적 특성에 따른 서비스 제공 및 광고
                                                    게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계 <br />
                                                    <br />
                                                    3. 개인정보의 보유 및 이용기간<br />
                                                    회사는 이용자의 개인정보를 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 다음의 정보에
                                                    대해서는 아래의 이유로 명시한 기간 동안 보존합니다.<br />
                                                    <br />
                                                    가. 회사의 내부방침에 의한 정보보유 사유<br />
                                                    - 부정이용기록 : 부정이용 방지<br />
                                                    - 보존기간 : 부정이용일로부터 1년<br />
                                                    <br />
                                                    나. 관련법령에 의한 정보보유 사유<br />
                                                    - 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br />
                                                    - 대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)<br />
                                                    - 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)<br />
                                                    - 방문(로그)에 관한 기록 : 3개월(통신비밀보호법)<br />
                                                    <br />
                                                    4. 개인정보의 파기 절차 및 방법<br />
                                                    이용자의 개인정보는 개인정보의 수집 및 이용목적이 달성되면 지체 없이 아래와 같은 방법으로 파기합니다. <br />
                                                    <br />
                                                    가. 파기절차<br />
                                                    이용자가 서비스 이용 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부
                                                    방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다. 별도
                                                    DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다. <br />
                                                    <br />
                                                    나. 파기방법<br />
                                                    - 종이에 출력된 개인정보 : 분쇄기로 분쇄하거나 소각 <br />
                                                    - 전자적 파일 형태로 저장된 개인정보 : 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제<br />
                                                    <br />
                                                    5. 개인정보의 제3자 제공 <br />
                                                    회사는 고객님의 개인정보를 회원가입 시 아래와 같이 고지 또는 명시하여 동의 받은 범위 내에서 제3자에게
                                                    제공합니다.<br />
                                                    -제공받는 자 : ㈜○○○<br />
                                                    -제공 목적 : 신규 서비스 개발 및 마케팅/광고에의 활용<br />
                                                    -제공 항목 : 신규 서비스 개발 및 마케팅/광고에의 활용 아이디, 이름, 이메일 주소, 휴대폰 번호<br />
                                                    -보유 및 이용기간 : 회원 탈퇴시까지<br />
                                                    <br />
                                                    이용자의 개인정보는 원칙적으로 위 사항 외에 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br />
                                                    - 이용자들이 사전에 동의한 경우<br />
                                                    - 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br />
                                                    <br />
                                                    6. 개인정보의 처리위탁<br />
                                                    회사는 서비스의 원활한 제공을 위해 개인정보를 위탁처리하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게
                                                    관리될 수 있도록 필요한 사항을 규정하고 있습니다. <br />
                                                    <br />
                                                    현재 회사의 개인정보처리수탁자와 그 업무의 내용은 다음과 같습니다.<br />
                                                    -위탁 대상자(수탁자) / 위탁업무 내용 / 개인정보항목 / 보유 및 이용기간 순 <br />
                                                    [㈜스냅컴퍼니(알림전송수탁업체 : ㈜엠티에스컴퍼니)] : 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성
                                                    정보 및 참여기회 제공 / 이름, 아이디, 휴대전화번호 / 계약종료시까지<br />
                                                    [배송업체명 기입] : 상품배송 / - / 계약종료시까지<br />
                                                    [㈜코리아센터] : 고객정보DB시스템운영(전산아웃소싱) / - / 계약종료시까지<br />
                                                    [본인인증기관 업체명 기입] : 본인인증 / - / 계약종료시까지<br />
                                                    [PG업체명 기입] : 결제관련 / - / 계약종료시까지<br />
                                                    <br />
                                                    7. 이용자 및 법정대리인의 권리와 그 행사방법<br />
                                                    가. 이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할
                                                    수 있으며 가입해지(동의철회)를 요청할 수도 있습니다.<br />
                                                    <br />
                                                    나. 이용자 혹은 만 14세 미만 아동의 개인정보 조회, 수정을 위해서는 로그인 후 MyPage에서 ‘개인정보변경’(또는
                                                    ‘회원정보수정’ 등)을, 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람,
                                                    정정 또는 탈퇴가 가능합니다. 혹은 개인정보보호책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이
                                                    조치하겠습니다.<br />
                                                    <br />
                                                    다. 이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지
                                                    않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이
                                                    이루어지도록 하겠습니다. <br />
                                                    <br />
                                                    라. 회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "3. 개인정보의 보유 및 이용기간"에
                                                    명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br />
                                                    <br />
                                                    8. 쿠키(cookie)의 운영에 관한 사항<br />
                                                    회사는 개인화되고 맞춤화된 서비스를 제공하기 위해서 이용자의 정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’ 등을
                                                    운용합니다. 쿠키란 회사의 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에 보내는 아주 작은 텍스트 파일로서
                                                    이용자의 컴퓨터 하드디스크에 저장됩니다. <br />
                                                    <br />
                                                    가. 쿠키 등 사용 목적<br />
                                                    이용자의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및
                                                    방문 회수 파악 등을 통한 타겟 마케팅 및 맞춤 서비스 제공<br />
                                                    <br />
                                                    나. 쿠키의 설치/운영<br />
                                                    이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를
                                                    허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. <br />
                                                    <br />
                                                    다. 쿠키 설정 거부 방법<br />
                                                    쿠키 설정을 거부하는 방법으로는 이용자가 사용하시는 웹 브라우저의 옵션을 택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할
                                                    때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. 단, 이용자께서 쿠키 설치를 거부하였을 경우 서비스
                                                    제공에 어려움이 있을 수 있습니다.<br />
                                                    <br />
                                                    설정방법 예(인터넷 익스플로어의 경우) : 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보<br />
                                                    <br />
                                                    9. 개인정보보호를 위한 기술적/관리적 대책 <br />
                                                    가. 회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조, 또는 훼손되지 않도록 안전성 확보를
                                                    위하여 다음과 같은 기술적 대책을 강구하고 있습니다.<br />
                                                    - 이용자의 개인정보는 암호화 되어 보호되고 있습니다. 그러나 이용자의 개인정보를 회사가 암호화시켜 보호하고 있음에도
                                                    불구하고 공공장소에서의 인터넷사용 등의 과정에서 의도하지 않게 분실하거나 타인에게 도난 또는 유출될 가능성이 있습니다.
                                                    그러므로 이용자는 개인정보를 타인에게 유출시키거나 대여, 제공 등 공개하여서는 아니 되며, 피싱 등 사회공학적 방법에 의한
                                                    개인정보 무단 수집으로부터 자신의 개인정보를 책임 있게 관리하여야 합니다. 이러한 개인정보의 분실, 도난 유출, 피싱,
                                                    공개에 대해서 회사는 어떠한 책임도 지지 않습니다. <br />
                                                    - 이용자의 개인정보는 기본적으로 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하여 중요한 데이터는 별도의
                                                    보안기능을 통해 보호되고 있습니다.<br />
                                                    - 회사는 항상 새로운 정보를 자동으로 Update하는 백신을 이용하여 컴퓨터 바이러스에 의한 피해를 방지하기 위해
                                                    24시간 근무요원이 상주하면서 보호조치를 취하고 있습니다. 만일, 바이러스 침투시 자동으로 바이러스 침투 Alarm을
                                                    근무자에게 보냄과 동시에 자동 치료하도록 되어 있습니다.<br />
                                                    - 회사는 암호알고리즘을 이용하여 네트워크상의 개인정보를 안전하게 전송할 수 있는 보안장치(SSL 또는 SET)를 채택하고
                                                    있습니다.<br />
                                                    - 회사는 해킹 등 회사 정보통신망 침입에 의해 이용자의 개인정보가 유출되는 것을 방지하기 위해 외부로부터의 침입탐지 및
                                                    침입차단 시스템을 24시간 가동하고 있습니다.<br />
                                                    <br />
                                                    나. 회사는 이용자의 개인정보보호의 중요성을 인식하고 있으며 이용자의 개인정보보호를 위해 개인정보처리직원을 최소한으로
                                                    제한하는 등 다음과 같은 관리적 조치를 취하고 있습니다.<br />
                                                    - 개인정보를 처리하는 직원을 대상으로 새로운 보안 기술 습득 및 개인정보보호의무 등에 관해 정기적인 사내교육 및 외부
                                                    위탁교육을 실시하고 있습니다. <br />
                                                    - 회사는 모든 입사자에게 보안서약서를 제출케 함으로 사람에 의한 정보유출을 사전에 방지하고 개인정보처리방침에 대한
                                                    이행사항 및 직원의 준수여부를 감시하고 위반내용이 확인되는 경우 이를 시정 또는 개선하고 기타 필요한 조치를 취하기 위한
                                                    내부절차를 마련하고 있습니다. 개인정보 관련 처리자의 업무 인수인계는 보안이 유지된 상태에서 철저하게 이뤄지고 있으며
                                                    입사/퇴사 후 개인정보 사고에 대한 책임을 명확화하고 있습니다. <br />
                                                    - 개인정보와 일반 데이터를 혼합하여 보관하지 않고 별도의 서버를 통해 분리하여 보관하고 있습니다. <br />
                                                    - 전산실 및 자료 보관실 등을 특별 보호구역으로 설정하여 출입을 통제하고 있습니다. <br />
                                                    - 회사는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 이용자
                                                    개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디(ID) 와 비밀번호를 적절하게 관리하고 이에 대한 책임을 져야
                                                    합니다.<br />
                                                    <br />
                                                    10. 개인정보보호책임자<br />
                                                    회사는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게
                                                    고지한 사항들에 반하는 사고가 발생할 시에는 회사가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고,
                                                    해킹 등 기본적인 네트워크상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에
                                                    의한 각종 분쟁에 관해서 회사는 책임을 지지 않습니다. 이용자의 개인정보를 처리하는 책임자는 다음과 같으며 개인정보 관련
                                                    문의사항에 신속하고 성실하게 답변해 드리고 있습니다. <br />
                                                    <br />
                                                    개인정보보호책임자 성명 : 정성진<br />
                                                    전화번호　: 010-4445-8307<br />
                                                    이메일　: gogo4330@naver.com<br />
                                                    <br />
                                                    11. 개인정보에 관한 민원서비스 <br />
                                                    회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 개인정보보호민원 담당부서를 지정하여
                                                    운영하고 있습니다.<br />
                                                    <br />
                                                    개인정보보호민원 담당부서 : 정성진<br />
                                                    전화번호 : 010-4445-8307<br />
                                                    이메일　:　gogo4330@naver.com<br />
                                                    <br />
                                                    이용자는 회사의 서비스를 이용하며 발생하는 모든 개인정보보호 관련 민원을 개인정보보호책임자 혹은 담당부서로 신고하실 수
                                                    있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 기타 개인정보침해에 대한 신고나 상담이
                                                    필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br />
                                                    - 개인정보 분쟁조정위원회 (https://www.kopico.go.kr/118)<br />
                                                    - 정보보호마크인증위원회 (http://www.eprivacy.or.kr/02-550-9531~2)<br />
                                                    - 대검찰청 (http://www.spo.go.kr/1301)<br />
                                                    - 경찰청 사이버안전국 (http://cyberbureau.police.go.kr/182)<br />
                                                    <br />
                                                    12. 고지의 의무 <br />
                                                    가. 본 개인정보처리방침을 포함한 기타 개인정보보호에 대한 상세한 내용은 서비스 홈페이지 첫 화면에 공개함으로써 이용자가
                                                    언제나 용이하게 보실 수 있도록 조치하고 있습니다.<br />
                                                    <br />
                                                    나. 법령 정책 또는 보안기술의 변경에 따라 중요한 내용의 추가 삭제 및 수정이 있을 시에는 변경되는 개인정보처리방침을
                                                    시행하기 전에 서비스 홈페이지를 통해 변경이유 및 내용 등에 대하여 공지하도록 하겠습니다.<br />
                                                    <br />
                                                    다. 본 개인정보처리방침의 내용은 수시로 변경될 수 있으므로 서비스홈페이지를 방문하실 때 마다 이를 확인하시기 바랍니다.
                                                    <br />
                                                    <br />
                                                    본 방침은 : 2018년 5월 9일부터 시행됩니다.<br />
                                                    <br />
                                                </div>
                                                <a href="javascript:policy_close();" class="close"><span
                                                        class="fa fa-times fa-2x"></span></a>
                                                        <br>
                                                        <br>
                                                        <br>
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
    
    $('.terms-desc dt a', '#terms_desc').on('click', function(e) {
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
                background-color:#fff;
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
                                <li><span>Business License</span><span>000-00-00000 [check]</span> <span>2019
                                        화성장안</span></li>

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


<script type="text/javascript">

function MK_join() {
    (function($) {
        $(function() {
            if ($('input[name="return_url"]').val().length > 0) {
                location.href = './join_complete.jsp?return_url=' + encodeURIComponent($('input[name="return_url"]').val())+'&first='+$('input[name="type"]').val();
                return false;
            } else {
                location.href = './join_complete.jsp';
                return false;
            }
        });
    })(jQuery);
}



function CheckKey_search(e) {
    e = e || window.event;
    key = e.keyCode;
    if (key == 13) {
        search_submit();
    }
}

function search_submit() {
    /*
    if (document.getElementById('keyword').value.replace(/\s/, '').length < 2) {
        alert('검색어는 2자 이상 입력해주세요.');
        document.getElementById('keyword').focus();
        return;
    }
    */
    document.search.submit();
}

function topnotice(temp, temp2) {
    window.open("/html/notice.html?date=" + temp + "&db=" + temp2, "", "width=450,height=450,scrollbars=yes");
}
function notice() {
    window.open("/html/notice.html?mode=list", "", "width=450,height=450,scrollbars=yes");
}

                if (typeof wcs_do == 'function') {
                    wcs_do();
                }

                (function($) {
                    function change_birth() {
                        var input_year = document.form1.birthyear.value;
                        var input_month = document.form1.birthmonth.value;

                        if (input_year.length > 0 && input_month.length > 0) {
                            var input_date = document.form1.birthdate.value;
                            var last_date = new Date(input_year, input_month, 0).getDate();

                            $('select[name="birthdate"] option:not(:first)').remove();
                            for (var cnt = 1; cnt <= last_date; cnt++) {
                                var opt_val = (cnt < 10)? '0' + cnt : cnt;
                                var attr = (input_date == cnt)? ' selected="selected"':'';
                                $('select[name="birthdate"]').append('<option value="' + opt_val + '"' + attr + '>' + cnt + '</option>');
                            }
                        }
                    }
                    $(function() {
                        $('select[name="birthyear"], select[name="birthmonth"]').change(function() {
                            change_birth();
                        });
                    });
                })(jQuery);

                (function($) {
                    $(function() {
                        $('input[name=sex][value=' + 2 + ']').trigger('click');
                        $(".new-birth").selectbox({
                            onChange: function() {
                                if (this.name == 'birthyear' || this.name == 'birthmonth') {
                                    var input_year = document.form1.birthyear.value;
                                    var input_month = document.form1.birthmonth.value;

                                    if (input_year.length > 0 && input_month.length > 0) {
                                        var input_date = document.form1.birthdate.value;
                                        var last_date = new Date(input_year, input_month, 0).getDate();

                                        $('select[name="birthdate"] option:not(:first)').remove();
                                        for (var cnt = 1; cnt <= last_date; cnt++) {
                                            var opt_val = (cnt < 10)? '0' + cnt : cnt;
                                            var attr = (input_date == cnt)? ' selected="selected"':'';
                                            $('select[name="birthdate"]').append('<option value="' + opt_val + '"' + attr + '>' + cnt + '</option>');
                                        }
                                        $('select[name="birthdate"]').selectbox('detach').selectbox('attach');
                                    }
                                }
                            }
                        });
                        $('select[name="birthyear"], select[name="birthmonth"]').change(function() {
                            var input_year = document.form1.birthyear.value;
                            var input_month = document.form1.birthmonth.value;

                            if (input_year.length > 0 && input_month.length > 0) {
                                var input_date = document.form1.birthdate.value;
                                var last_date = new Date(input_year, input_month, 0).getDate();

                                $('select[name="birthdate"] option:not(:first)').remove();
                                for (var cnt = 1; cnt <= last_date; cnt++) {
                                    var opt_val = (cnt < 10)? '0' + cnt : cnt;
                                    var attr = (input_date == cnt)? ' selected="selected"':'';
                                    $('select[name="birthdate"]').append('<option value="' + opt_val + '"' + attr + '>' + cnt + '</option>');
                                }
                            }
                        });
                        if ('N' == 'Y') {
                            $('.birth th').text("생년월일(선택)");
                            $('.gender th').text("성별(선택)");
                        }
                    });
                })(jQuery);

            $('.terms-desc dt a', '#terms_desc').on('click', function(e) {
                e.preventDefault();
                if ($(this).hasClass('btn-down')) {
                    $(this).removeClass('btn-down').addClass('btn-up');
                    $(this).parents('dl').find('dd').show();
                } else {
                    $(this).removeClass('btn-up').addClass('btn-down');
                    $(this).parents('dl').find('dd').hide();
                }
            });

        $('.new_every_agree').click(function() {
            var check_name = $(this).val();
            var all_checked = $(this).is(":checked");
            var check_class = '';
            var item_name = '';
            if (check_name == 'all') check_class = 'every_agree';
            else check_class = 'ad_every_agree';
            

            $('.'+check_class).attr('checked', all_checked);
            
            $('.'+check_class).each(function() {
                if ($(this).val() != 'Y' && $(this).val() != '' && $(this).val() != 'ad_all') {
                    item_name = $(this).val()
                    if (all_checked == true) $('#'+item_name).addClass('agree_uid');
                    else $('#'+item_name).removeClass('agree_uid');
                }
            });
        });

        $('.every_agree').click(function() {
            var every_agree = 0;
            var chk_every_agree = 0;
            var ad_every_agree = 0;
            var chk_ad_every_agree = 0;

            $('.ad_every_agree').each(function() {
                ad_every_agree++;
                if ($(this).is(':checked', true)) {
                    chk_ad_every_agree++;
                    $(this).addClass('agree_uid');
                } else {
                    $(this).removeClass('agree_uid');
                }
            });
            if (ad_every_agree == chk_ad_every_agree) $('#ad_every_agree').attr('checked', true);
            else $('#ad_every_agree').attr('checked', false);

            $('.every_agree').each(function() {
                every_agree++;
                if ($(this).is(':checked', true)) {
                    chk_every_agree++;
                    $('#' + $(this).val()).addClass('agree_uid');
                } else {
                    $('#' + $(this).val()).removeClass('agree_uid');
                }
            });
            if (every_agree == chk_every_agree) $('#every_agree').attr('checked', true);
            else $('#every_agree').attr('checked', false);
        });

            $('.terms-agree .lst li a', '#terms_agree').on('click', function(e) {
                e.preventDefault();
                $('.terms-desc dt a', '#terms_desc').removeClass('btn-up').addClass('btn-down');
                $('.terms-desc dd', '#terms_desc').hide();
                $(this.hash).find('dt a').removeClass('btn-down').addClass('btn-up');
                $(this.hash).find('dd').show();
                $('html, body').animate({scrollTop: $(this.hash).offset().top}, 500);
            });

var MK_key="";
var submitform="";
//var str="";
function join_init(){
    GibberishAES.size(256);	

    submitform = document.form1;
    enCheck();
    submitform.msecure_key.value="";
}
function enCheck() {
    initTest = "dnnJESL5zR0Wi38kOoIWOQ==";
    if(keyCheck(initTest,MK_keys[0])=="join") 
    {
        MK_key=MK_keys[0] ;
    }
    else if(keyCheck(initTest,MK_keys[1])=="join") 
    {
        MK_key=MK_keys[1] ;
    }
    else if(keyCheck(initTest,MK_keys[2])=="join") 
    {
        MK_key=MK_keys[2] ;
    }
}
// window.onload 안 쓰는 이유 : 아래에 있어서 못쓴다. window.onload 는 한번만.
$(document).ready(function () {
    join_init();
});

    function certIpin() {
        var auth_select_type = 'Y';
        if (typeof document.form1.auth_select_type != 'undefined') {
            for (var i = 0; i < document.form1.auth_select_type.length; i++) {
                if (document.form1.auth_select_type[i].checked) {
                    auth_select_type = document.form1.auth_select_type[i].value;
                }
            }
        }
        if (auth_select_type != 'Y') {
            alert('아이핀 인증을 선택하셔야 아이핀 인증이 가능합니다.');
            return;
        }
        if (document.ipinInForm) {
            var popupWindow = window.open("", "ipinPop", "left=200, top=100, status=0, width=450, height=550" );
            document.ipinInForm.FILLER01.value = "https://" + document.domain + '/shop/ipin_auth.html';
            document.ipinInForm.action = "https://ipin.ok-name.co.kr/tis/ti/POTI01A_LoginRP.jsp";
            document.ipinInForm.target = "ipinPop";
            document.ipinInForm.submit();
            popupWindow.focus();
        } else {
            alert('상점에 문의 바랍니다.');
        }
        return;
    }


var id_ajax_lock = false; //아이디 중복체크 ajax lock 변수
function msg_check(chk_type) {
    var msg_string = '';
    var min_length = 4;
    var _id_check = 'A';
    var id_check_add = '';
    var hangul_add = '';
    if (chk_type == 'id') {
        var id_val = $('#join_form input[name=id]').val();
        var add_value = "", alert_type = chk_type;
    } else if (chk_type == 'recommand_id') {
        var id_val = $('input[name=recommand_id]').val();
        var add_value = "추천인 아이디는 ", alert_type = 'recommend_id', msg_title = '추천 아이디';
        min_length = 2;
    } else if (chk_type == 'app_recommend_id') {
        var id_val = $('input[name=app_recommend_id]').val();
        var add_value = "초대회원 아이디는 ", alert_type = 'app_recommend_id', msg_title = '초대회원 아이디';
        min_length = 2;
    }
    if (id_val.bytes() < min_length || id_val.bytes() > 12) {
        if (_id_check == 'Y') {
            var id_check_add = '영문/숫자, ';
        } else if (_id_check == 'A') {
            var id_check_add = '영문/영문+숫자, ';
        } else if (_id_check == 'N') {
            var hangul_add = "(한글 " + (min_length / 2) + "~" + 12 / 2 + "자리)";
        }
        msg_string = add_value + id_check_add + min_length + "~12자리" + hangul_add + "입력";
        user_notice_alert(msg_string, alert_type, false, true);
        id_ajax_lock = false;
        return;
    }
    if (!id_ajax_lock && id_val != "") {
        id_ajax_lock = true;
        /*
        window.scrollTo(0, 0);
        $('#searchStep02 ,#searchStep03').hide();
        $('body').bind('touchmove', function(e){	// 터치 죽이기
            e.preventDefault();
        });
        */

        if (id_val.indexOf("&") >= 0 
            || id_val.indexOf("?") >= 0 
            || id_val.indexOf("#") >= 0 
            || id_val.indexOf("%") >= 0 
            || id_val.indexOf(" ") >= 0 ) {
            id_ajax_lock = false;
            msg_string = "아이디에 『&』,『?』,『%』『#』 또는 공백 문자를 사용하실 수 없습니다.";
            user_notice_alert(msg_string, alert_type, false, true);
            return;
        } else {
            $.ajax({
                type : 'POST',
                dataType : 'json',
                async: false,
                url  : '/m/join_us.ajax.html',
                data : { action_mode : 'DUPLICATION_ID', id : enc(id_val), chk_mode : chk_type },
                success : function(response) {
                    id_ajax_lock = false;
                    //id_check_success = response.success;
                    if (chk_type == 'id') {
                        if (response.success === true) {
                            $('input[name=idcheck]').val(id_val);
                            
                            user_notice_alert(response.msg, alert_type, true, true);
                        } else {
                            user_notice_alert(response.msg, alert_type, false, true);
                        }
                    } else {
                        if (response.success === true) {
                            _message = response.msg == '사용 가능한 아이디입니다.' ? msg_title + '가 존재하지 않습니다.' : response.msg;
                            user_notice_alert(_message, alert_type, false, true);
                        } else {
                            user_notice_alert(response.msg, alert_type, true, true);
                        }
                    }
                    //$('#check .info p').text(response.msg);
                    //$('#check').show();
                }
            });
        }
    }
}

function checkJumin(kjumin1, kjumin2) {
    var i, sum = 0;
    var str = kjumin1 + kjumin2;
    var jumin1 = kjumin1, jumin2=kjumin2;
    if (str.length < 13) {
        return false;
    }
    for (i=0,sum=0; i<12; i++) {
        sum += (((i%8) + 2) * (str.charAt(i) - "0"));
    }
    sum = 11 - (sum % 11);
    sum = sum % 10;
    if (sum == str.charAt(12)) {
        return true;
    }
    // 외국인 등록번호 체크
    if (fgnCheck(str)) {
        return true;
    }
    return false;
}

function check14(kjumin1, min2) {
    var chk_point = Number("20071106");
    var year = '';
    var check_res = '';
    
    switch (min2) {
        case '0' :
        case '9' : 
            year = '18';
            break;
        case '1' :
        case '2' :
        case '5' :
        case '6' : 
            year = '19';
            break;
        case '3' :
        case '4' :
        case '7' :
        case '8' :
        default :
            year = '20';
            break;
    }
    
    check_res = Number(year + kjumin1.substring(0,6));

    if (check_res < chk_point) {
        return true;
    } else {
        return false;
    }
}

function simple_check14(birth) {
    var chk_point = Number("20071106");
    if (birth < chk_point) {
        return true;
    } else {
        return false;
    }
}


function blank_check(str) {
    var blank_check=1;
    var blank_pattern = /^\s+|\s+$/g;
        if( str.replace( blank_pattern, '' ) == "" ){
            blank_check = 0;
        }
    return blank_check;
}

function hname_check(str) {
    var limitmsg = /[,;|\`<>\&\\'\"]/gi;
    return (limitmsg.test(str)) ? 0 : 1;
}

String.prototype.bytes = function() {
    var str = this;
    var l = 0;
    for (var i=0; i<str.length; i++) {
        l += (str.charCodeAt(i)  > 128) ? 2 : 1;
    }
    return l;
}

function post(type) {
    window.scrollTo(0, 0);
    if (type == 1) {
    // 집 주소 찾기 클릭시
        $('#searchStep03 input[name=addr_type]').val('home');
    } else if (type == 2) {
    // 회사 주소 찾기 클릭시
        $('#searchStep03 input[name=addr_type]').val('office');
    } else if (type == 3) {
        // 기업회원 주소
        $('#searchStep03 input[name=addr_type]').val('company');
    }

    $('form[name=addr_search] input[name=address]').val('');
    //$('#searchStep01 select[name=addr_search_select]').empty();
    $('#searchStep03').hide();
    $('#addrSearch').show();
    $('#searchStep01').show();

    if (document.querySelector('.search-address')) {
        document.querySelector('.search-address').innerHTML = '';
    }
    //return false;
}


    function emailcheck(type, email_type) { 
        if (type == 'Y') { 
            if (!document.form1.email1) {
                user_notice_alert('이메일 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'email', false, true);
                return; 
            }
            if (!document.form1.email2) {
                user_notice_alert('이메일 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'email', false, true);
                return; 
            }
            if (document.form1.email1.value != '' && document.form1.email3.value == '' ){
                document.form1.email3.focus();
                return;
            }
            if (document.form1.email1.value == '') { 
                user_notice_alert('E-Mail 항목을 입력해 주세요.', 'email', false, true);
                document.form1.email1.focus(); 
                return; 
            } 
            if (document.form1.email2.value == '') { 
                user_notice_alert('E-Mail 주소가 제대로 입력되지 않았습니다.', 'email', false, true);
                document.form1.email2.focus(); 
                return; 
            } 
            if (document.form1.email2.value == 'direct') { 
                if (document.form1.email3.value == '') { 
                    user_notice_alert('E-Mail 주소가 제대로 입력되지 않았습니다.', 'email', false, true);
                    document.form1.email3.focus(); 
                    return; 
                } 
                var pattern = /^[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
                if(!pattern.test(document.form1.email3.value)){ 
                    user_notice_alert('잘못된 이메일입니다.', 'email', false, true);
                    document.form1.email3.focus(); 
                    return; 
                } 
                var email = document.form1.email1.value + "@" + document.form1.email3.value; 
            } else { 
                var email = document.form1.email1.value + "@" + document.form1.email2.value; 
            }
        } else { 
            if (!document.form1.email) {
                user_notice_alert('이메일 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'email', false, true);
                return; 
            }
            if (document.form1.email.value == '') { 
                document.form1.email.focus();
                user_notice_alert('E-Mail 항목을 입력해 주세요.', 'email', false, true);
                return; 
            } 
            var pattern = /^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/; 
            if(!pattern.test(document.form1.email.value)){ 
                user_notice_alert('잘못된 이메일입니다.', 'email', false, true);
                document.form1.email.focus(); return; 
            } 

            var email = document.form1.email.value; 
        } 
        if (email_type == 'Y') {
            return email;
        }
        if (typeof document.form1.old_email != "undefined") {
            if (document.form1.type.value !== 'ins' && email == document.form1.old_email.value) {
                user_notice_alert('현재 사용중인 정보와 동일합니다.', 'email', false, true);
                return;
            }
        }
                var mem_simple_type = 'SIMPLE';
        var params = { 
            action_mode : "email_chk", 
            check_value : enc(email),
            r : Math.random(),
            exitday : '0'
        }; 
        $.ajax({ 
            type : 'POST',
            dataType : 'json',
            url : "/shop/userinfo_duplicate.ajax.html", 
            data : params, 
            async       : false,
            success : function(req) { 
                if (req.result) { 
                    $('input[name=emailcheck]').val('Y'); 
                    if (mem_simple_type == 'SIMPLE' || mem_simple_type == 'SNS') {
                        user_notice_alert(req.msg, 'email', true, false);
                    } else {
                        user_notice_alert(req.msg, 'email', true, true);
                    }
                } else { 
                    $('input[name=emailcheck]').val(''); 
                    user_notice_alert(req.msg, 'email', false, true);
                    document.form1.email.focus();
                } 
                return;
            } 
        });  
        
     } 

function isnumber(val, allowable) {
    var valid = true;
    var cmp = "0123456789" + allowable;
    for (var i=0; i<val.length; i++) {
        if (cmp.indexOf(val.charAt(i)) < 0) {
		    valid = false;
            break;
        }
    }
    return valid;
}

    function checknumber( input_obj, len, title ) {
        var msg_string = '', exam = '' , chk_type = '';
                if (title == "연락처") {
             exam = "\n예) 02-0000-0000";
        } else {
            exam="\n예) 010-0000-0000";
        }

        input_obj.value = input_obj.value.replace(/\ /g,""); 
        if (input_obj.type == "hidden") {
            return true;
        }
        if (isnumber(input_obj.value, "-" ) && (input_obj.value.length >= len) ) {
            return true; 
        }

        if (len > 5 && input_obj.value.substring(0,1) != '0') { msg_string = '전화번호를 입력하세요.\n예) 02-0000-0000, 010-0000-0000 '; } else  if (len > 0 && isnumber( input_obj.value, "-" )) {
            msg_string = "'" + title + "'를 자리수에 맞게 입력하세요." + exam;
        } else {
            msg_string = "'" + title + "'는 숫자만 입력 가능합니다.";
        }

        if (input_obj.name.substring(0,6) == 'hphone') {
            chk_type = 'tel';
        } else if (input_obj.name.substring(0,8) == 'etcphone') {
            chk_type = 'mobile';
        } else if (input_obj.name.substring(0,5) == 'hpost') {
            chk_type = 'address';
        } else if (input_obj.name.substring(0,5) == 'opost') {
            chk_type = 'office_address';
        } else if (input_obj.name.substring(0,6) == 'ophone') {
            chk_type = 'office_tel';
        }

        if (chk_type.length != '') {
            user_notice_alert(msg_string, chk_type, false, true);
        }

        input_obj.focus();
        return false;
    }

function checkphone(input_obj, num, title, require) {
    var regexp = /^(0\d{1,2}|\d{3,4})-?\d{3,4}-?\d{4}$/;
    var msg_string = '';
    if (regexp.test(num) || require === false) {
        return true;
    }

    msg_string = "정상적인 " + title + "만 입력 가능합니다.\n\n" + title + "를 정확히 입력하세요.";
    if (input_obj.name.substring(0,6) == 'hphone') {
        chk_type = 'tel';
    } else if (input_obj.name.substring(0,8) == 'etcphone') {
        chk_type = 'mobile';
    } else if (input_obj.name.substring(0,6) == 'ophone') {
        chk_type = 'office_tel';
    }

    user_notice_alert(msg_string, chk_type, false, true);
    input_obj.focus();
    return false;
}

function radiocheck(obj) {
    for( var i=0, len=obj.length; i < len; i++ ) {
        if (obj[i].checked == true) {
            var chk = obj[i].value;
        }
    }
	return chk;
}

function onload_chk() {
    var resno = document.getElementById('resnoform');

}
if( window.addEventListener ) {
    window.addEventListener("load",function() {
        onload_chk();
    },false);
} else if( document.addEventListener ) {
    document.addEventListener("load",function() {
        onload_chk();
    },false);
} else if( window.attachEvent ) {
    window.attachEvent("onload",function() {
        onload_chk();
    });
}

function ssling(temp) {
    if (typeof(document.getElementById('MSecureingiframe') /*all('MSecureingiframe')*/ )!='undefined') {
        var _x = (document.documentElement.clientWidth || document.body.clientWidth)/2 + (document.documentElement.scrollLeft || document.body.scrollLeft) - 187;
        var _y = (document.documentElement.clientHeight || document.body.clientHeight)/2 + (document.documentElement.scrollTop || document.body.scrollTop) - 51;

        var MSecureingiframe = document.getElementById('MSecureingiframe');//all.MSecureingiframe;

        MSecureingiframe.style.left    = _x + 'px';
        MSecureingiframe.style.top     = _y + 'px';
        MSecureingiframe.style.visibility = temp;
    }
}

        function chk_password1(input_pw1, input_id) {
            var pw1 = input_pw1.value;
    if (pw1.length < 4 || pw1.length > 16) {
        user_notice_alert('비밀번호는 4~16자로 설정하셔야 합니다.', 'password1', false, true);
        input_pw1.focus();
        return false;
    }
    }

    function chk_password2(input_pw1, input_pw2) {
        var pw1 = input_pw1.value;

        if (typeof(input_pw2) != "undefined") {
            var pw2 = input_pw2.value;

            if (pw2.length < 1) {
                user_notice_alert('비밀번호 확인 항목을 입력해 주세요.', 'password2', false, true);
                input_pw2.focus();
                return false;
            }
            if (pw1 != pw2) {
                user_notice_alert('비밀번호가 서로 일치하지 않습니다.', 'password2', false, true);
                input_pw2.focus();
                return false;
            }
        }
    }

function check_password(input_pw1, input_pw2, input_id) {

    //var pw1 = input_pw1.value;
    if (chk_password1(input_pw1, input_id) === false) {
        return false;
    } else {
        user_notice_alert('정상입력입니다.', 'password1', true, false);
    }
    if (chk_password2(input_pw1, input_pw2) === false) {
        return false;
    } else {
        user_notice_alert('비밀번호가 일치합니다.', 'password2', true, false);
    }

    return true;
}function check_pwd_length(v, check_type) {
    if (v.value.length > 16) {
        v.value = v.value.substr(0, 16);
        
        user_notice_alert('비밀번호를 16자 이하로 입력하세요.', check_type, false, true);
        v.focus();
        return false;
    }
    
    return;
 }

        (function($) {
        
                $('input[name="id"]').keyup(function() {
                //$('MK_join_id_check_area').click(function() 
                    if ($(this).val().length == '0') {
                        $('.MK_join_id_check_area').html('').removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                    }
                    $('input[name="idcheck"]').val('');
                    msg_check('id');
                });
            $('input[name="jname"]').change(function() {
                if ($(this).val().length == '0') {
                    $('.MK_join_name_check_area').html('이름을 입력해주세요.').removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                } else {
                    // 엔터입력으로 인한 회원명 특수문자 입력체크
                    if (hname_check($(this).val()) == 0 || !blank_check($(this).val())) {
                        $('.MK_join_name_check_area').html("이름에 사용 불가능한 문자가 입력되었습니다.").removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                    } else {
                        $('.MK_join_name_check_area').html("정상입력입니다.").addClass('MK_ok_confirm').removeClass('MK_no_confirm');
                    }
                }
                
            });
            $('input[name="password1"]').keyup(function() {
                if ($(this).val().length == '0') {
                    $('.MK_join_password_check_area').html('비밀번호를 입력해주세요.').removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                } else {
                    // 이렇게 해야할까?? ㅠㅠ
                    if ( chk_password1(this, $('#join_form input[name="id"]')[0]) !== false) {
                        user_notice_alert('정상입력입니다.', 'password1', true, false);
                    }
                }
                $('input[name="password2"]').keyup();
            });            $('input[name="password2"]').keyup(function() {
                if ($(this).val().length == '0') {
                    $('.MK_join_repassword_check_area').html('비밀번호 확인 항목을 입력해주세요.').removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                } else {
                    if(this.value != $('input[name="password1"]').val()) {
                        $('.MK_join_repassword_check_area').html('비밀번호가 일치하지 않습니다.').removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                    } else {
                        $('.MK_join_repassword_check_area').html('비밀번호가 일치합니다.').addClass('MK_ok_confirm').removeClass('MK_no_confirm');
                    }
                }
            });        $('input[name="email"], input[name="email1"], input[name="email3"], select[name="email2"]').keyup(function() {
            $('input[name=emailcheck]').val(''); 
            emailcheck('N', 'N');
            return false;
        });            $('input[name="recommand_id"]').keyup(function() {
            //$('MK_join_recommend_id_check_area').click(function() 
                if ($(this).val().length == '0') {
                    $('.MK_join_recommend_id_check_area').html('추천인 아이디를 입력해주세요.').removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                }
                msg_check('recommand_id');
                
            });
            $('input[name="app_recommend_id"]').keyup(function() {
            //$('MK_join_recommend_id_check_area').click(function() 
                if ($(this).val().length == '0') {
                    $('.MK_join_app_recommend_id_check_area').html('초대회원 아이디를 입력해주세요.').removeClass('MK_ok_confirm').addClass('MK_no_confirm');
                }
                msg_check('app_recommend_id');
                
            });

        })(jQuery);


// 인자값 : 알림 string, 메세지 노출 영역, 메세지 노출 영역 class control, 알림 alert 노출 여부
function user_notice_alert(msg_string, area_obj_text, area_class_flag, alert_chk_flag){
    var chk_area = {};
    chk_area['id'] = jQuery('.MK_join_id_check_area');
    chk_area['jname'] = jQuery('.MK_join_name_check_area');
    chk_area['nickname'] = jQuery('.MK_join_nickname_check_area');
    chk_area['password1'] = jQuery('.MK_join_password_check_area');
    chk_area['password2'] = jQuery('.MK_join_repassword_check_area');
    chk_area['email'] = jQuery('.MK_join_email_check_area');
    chk_area['tel'] = jQuery('.MK_join_tel_check_area');
    chk_area['mobile'] = jQuery('.MK_join_mobile_check_area');
    chk_area['recommend_id'] = jQuery('.MK_join_recommend_id_check_area');
    chk_area['app_recommend_id'] = jQuery('.MK_join_app_recommend_id_check_area');
    chk_area['address'] = jQuery('.MK_join_address_check_area');
    chk_area['birth'] = jQuery('.MK_join_birth_check_area');
    chk_area['greeting'] = jQuery('.MK_join_greeting_check_area');
    chk_area['user_img'] = jQuery('.MK_join_user_img_check_area');
    chk_area['office_tel'] = jQuery('.MK_join_office_tel_check_area');
    chk_area['office_address'] = jQuery('.MK_join_office_address_check_area');
    chk_area['anniversary'] = jQuery('.MK_join_anniversary_check_area');
    chk_area['anniversary0'] = jQuery('.MK_join_anniversary1_check_area');
    chk_area['anniversary1'] = jQuery('.MK_join_anniversary2_check_area');
    chk_area['anniversary2'] = jQuery('.MK_join_anniversary3_check_area');
    if(area_obj_text.substring(0,11) == 'anniversary') {
        if (jQuery('.MK_join_anniversary_check_area').length > 0) {
            chk_area[area_obj_text] = jQuery('MK_join_anniversary_check_area');
        } 
    }
    if (area_obj_text.substring(0,8) == 'etc_info') {
        chk_area[area_obj_text] = jQuery('.MK_join_' + area_obj_text + '_check_area');
    }
    if (chk_area[area_obj_text].length == 0 ) {
        if (alert_chk_flag === true) {
            alert(msg_string);
            return 'alert';
        }
    } else {
        if (area_class_flag === true) {
            chk_area[area_obj_text].html(msg_string).addClass('MK_ok_confirm').removeClass('MK_no_confirm');
        } else {
            chk_area[area_obj_text].html(msg_string).removeClass('MK_ok_confirm').addClass('MK_no_confirm');
        }
        return 'area';
    }
}
function chk_isnumber(s) {
    s += ''; // 문자열로 변환
    s = s.replace(/^\s*|\s*$/g, ''); // 좌우 공백 제거
    if (s == '' || isNaN(s)) return false;
    return true;
}
        var connect_date = new Date();

function send() {
            var nowdate = new Date();
        var interval_time = (nowdate.getTime() - connect_date.getTime())/1000/60/60;
            if (interval_time >= 1) {
                alert('페이지 대기 시간이 길어 보안처리 세션이 종료되었습니다.\n개인정보 보안을 위해 다시 작성해 주시기 바랍니다.');
                document.location.reload(); 
                return;
            }
            if (typeof document.form1.allnew_agree != 'undefined' && document.form1.allnew_agree.value == 'Y') {
            if (typeof document.form1.yaok2 != "undefined" && document.form1.yaok2.checked == false) {
                alert("약관을 읽어보시고 동의하셔야 됩니다.");
                return;
            }
            if (typeof document.form1.privacy1 != 'undefined' && document.form1.privacy1.checked == false) {
                alert('개인정보 수집 및 이용에 동의하셔야 됩니다.');
                return;
            }
            
            
        } else {
            if (typeof document.form1.yaok2 != "undefined") {
                if (document.form1.yaok2[0].checked == false) {
                    alert("약관을 읽어보시고 동의하셔야 됩니다.");
                    return;
                }
            }
        }

        //개정약관 필수값 체크
        var select_privacy_agree = "";
        var err_check = false;
        $('.privacy_agree').each(function() {
            if ($(this).is(':checked') == true) {
                if ($(this).attr('required') == 'required' && $(this).val() == 'N') {
                    alert("[필수]개인정보 수집, 이용을 읽어보시고 동의하셔야 됩니다.");
                    err_check = true;
                    return false;
                }

                if ($(this).val() != 'Y' && $(this).val() != 'N') {
                    select_privacy_agree += $(this).val() + '_';
                }
            }
});
        if (err_check == true) return;
        
        $('.agree_uid').each(function() {
            select_privacy_agree += $(this).val();
        });

        if (typeof document.form1.data_privacy_agree != 'undefined') {
            document.form1.data_privacy_agree.value = select_privacy_agree;
        }
        var user_id     = document.form1.id.value;
    var id_chk      = 'N';
    var chk_id_val = '';
    if ('kor' == 'kor') {
        chk_id_val = '아이디에 ';
    }

    if (user_id != '') {

        if (user_id.indexOf("&") >= 0
                || user_id.indexOf("?") >= 0  
                || user_id.indexOf("#") >= 0  
                || user_id.indexOf("%") >= 0                    
                || user_id.indexOf(" ") >= 0 ) {                
            user_notice_alert(chk_id_val +"『&』,『?』,『%』『#』 또는 공백 문자를 사용하실 수 없습니다.", 'email', false, true);
            return;
        }           

        $.ajax({
            type        : "POST",
            dataType    : "json",
            url         : '/shop/userinfo_duplicate.ajax.html',
            data        : {action_mode : "user_id_chk", chk_type : "user", check_value : enc(user_id)},
            async       : false,
            success     : function(req) {
                if (req.result === true) {
                    $('input[name=idcheck]').val(user_id);
                    id_chk = 'Y';
                    user_notice_alert(req.msg, 'id', true, false);
                } else {
                    user_notice_alert(req.msg, 'id', false, true);
                    document.form1.id.value = '';
                    document.form1.id.focus();
                }
            }
        });

        if (id_chk == 'N') {
            return;
        }
    }        if (document.form1.user_age_check && document.form1.user_age_check.checked === false) {
            alert("14세 이상 회원가입이 가능합니다.");
            document.form1.user_age_check.focus();
            return;
        }    var email_chk   = 'N';
    var email_val   = document.form1.email.value;
    if (email_val != '') {
        var pattern = /^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/; 
        if(!pattern.test(email_val)){ 
            user_notice_alert("잘못된 이메일입니다.", 'email', false, true);
            document.form1.email.focus(); 
            return; 
        }
        $.ajax({ 
            type        : 'POST',
            dataType    : 'json',
            url         : "/shop/userinfo_duplicate.ajax.html", 
            data        : {action_mode : "email_chk", check_value : enc(email_val), r : Math.random(), exitday : '0'}, 
            async       : false,
            success     : function(res) { 
                if (res.result === true) { 
                    document.form1.emailcheck.value = 'Y'; 
                    email_chk = 'Y';
                } else { 
                    document.form1.emailcheck.value = ''; 
                    document.form1.email.focus();
                    user_notice_alert(res.msg, 'email', false, true);
                } 
            } 
        });
        if (email_chk == 'N') {
            document.form1.email.focus();
            return;
        }
    }
 
    
    if (document.form1.mem_type.value == 'COMPANY') {
        if (chk_company(document.form1) == undefined) {
            return;
        }
    }
    if (!document.form1.hname) {
        user_notice_alert('이름 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'hname', false, true);
        return; 
    } else {
        // (코치) 성, 이름항목 입력 값 확인
        if (form1.hname_custom != undefined) {
            if (form1.hname.value.trim() < 1 || form1.hname_custom.value.trim().length < 1) {
                user_notice_alert("성, 이름 항목을 입력해 주세요.", 'hname', false, true);
                form1.hname.select();
                return;
            }
        }
        if(!blank_check(form1.hname.value)) {
            user_notice_alert("이름 항목을 입력해 주세요.", 'hname', false, true);
            form1.hname.select();
            return;
        }

        // PC,모바일 회원가입 회원명 특수문자 체크
        if (hname_check(form1.hname.value) == 0) {
            user_notice_alert("이름에 사용 불가능한 문자가 입력되었습니다.", 'hname', false, true);
            form1.hname.select();
            return;
        }
    }
    if (document.form1.hname.value.bytes()>30) {
        user_notice_alert("이름은 한글15자, 영문30자로 입력하세요.", 'jname', false, true);
        document.form1.hname.focus();
        return;
    }

    user_notice_alert("정상입력입니다.", 'jname', true, false);

             if (!document.form1.id) {
             user_notice_alert('아이디 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'id', false, true);
             return; 
         }

         if (document.form1.id.value.length == 0) {
             user_notice_alert('ID 항목을 입력해 주세요.', 'id', false, true);
             document.form1.id.focus();
             return;
         } else if (document.form1.id.value.bytes() < 4) {
             user_notice_alert('ID를 4자이상 입력하세요.', 'id', false, true);
             document.form1.id.focus();
             return;
         } else if (document.form1.id.value.bytes() > 12) {
             user_notice_alert('ID를 12자이하로 입력하세요.', 'id', false, true);
             document.form1.id.focus();
             return; 
         } else if (document.form1.id.value != document.form1.idcheck.value) {
             user_notice_alert('ID 중복확인을 하셔서 확인이 되셔야 가입이 가능합니다.', 'id', false, true);
             document.form1.id.focus();
             return;
         } else if (document.form1.idcheck.value.length == 0 || document.form1.idcheck.value == ""){
            user_notice_alert('ID가 중복되었습니다.', 'id', false, true);
            document.form1.id.focus();
            return ;
         }         if (!document.form1.password1) {
             user_notice_alert('비밀번호 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'password1', false, true);
             return; 
         }
         if (!document.form1.password2) {
             user_notice_alert('비밀번호확인 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'password2', false, true);
             return; 
         }
         if (document.form1.password1.value.length > 0  ) {
             if (document.form1.password1.value.length > 0) {
                 if(!blank_check(form1.password1.value)) {
                     user_notice_alert('비밀번호 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'password1', false, true);
                     form1.password1.select();
                     return;
                 }
             }         }
         if (check_password(document.form1.password1, document.form1.password2, document.form1.id) === false) {
            return;
         }                if (!document.form1.birthyear || !document.form1.birthmonth || !document.form1.birthdate) {
                    user_notice_alert('생년월일 항목이 입력되지 않았습니다. 쇼핑몰에 문의 해주세요.', 'birth', false, true);
                    return; 
                }
                if ((document.form1.birthyear.value == "" || document.form1.birthmonth.value == "" || document.form1.birthdate.value == "") && ('' != 'Y' || '' == 'Y') && 'N' == 'N') {
                    user_notice_alert('생년월일 항목을 선택해 주세요.', 'birth', false, true);
                    document.form1.birthyear.focus();
                    return;
                }            var resno1 = document.form1.birthyear.value+document.form1.birthmonth.value+document.form1.birthdate.value;
            if (simple_check14(resno1) == false) {
                if (document.form1.member_join_type.value == 'NEW' && document.form1.member_join_minor.value == 'N' || document.form1.member_join_type.value == 'BASIC') {
                    alert("만 14세 미만의 아동은 회원가입시\n\n법적대리인의 동의가 있어야 합니다!\n\n당사 쇼핑몰로 연락주시기 바랍니다.");
                    return;
                }
            }    var email = emailcheck('N', 'Y');
    if (email == null) {
        return;
    } else if (document.form1.emailcheck.value != 'Y') {
        if (document.form1.type.value == 'ins' || (document.form1.type.value == 'upd' && document.form1.email.value != document.form1.old_email.value)) {
            user_notice_alert('이메일 중복확인을 하셔야 회원가입이 가능합니다.', 'email', false, true);
            document.form1.email1.focus();
            return;
        } else if (document.form1.old_email.value != email) {
            user_notice_alert('이메일이 중복되었습니다', 'email', false, true);
            document.form1.email1.focus();
            return;
        }
    }        //document.form1.etcphone = jQuery('input[name=etcphone]', 'form[name=form1]')[0];
        //if (document.form1.etcphone) {
        if (jQuery('input[name=etcphone]', 'form[name=form1]').length > 0 ) {
            if ('' != 'Y' || '' == 'Y') {
                if(jQuery('input[name=etcphone]', 'form[name=form1]').attr('type') == 'hidden'){
                    if (jQuery('input[name=etcphone]', 'form[name=form1]').val().replace(/-/g,"") == "") {
                        user_notice_alert("휴대폰번호 항목을 입력해 주세요.", 'mobile', false, true);            
                        jQuery('select[name=etcphone1]', 'form[name=form1]').focus();
                        return;
                    }
                }else{
                    if (jQuery('input[name=etcphone]', 'form[name=form1]').val().replace(/-/g,"") == "") {
                        user_notice_alert("휴대폰번호 항목을 입력해 주세요.", 'mobile', false, true);            
                        jQuery('input[name=etcphone]', 'form[name=form1]').focus();
                        return;
                    }
                }
            }
            if ((jQuery('input[name=etcphone]', 'form[name=form1]').length > 0  && jQuery('input[name=etcphone]', 'form[name=form1]').val() && 'N' != 'Y') || ((document.form1.etcphone1 && document.form1.etcphone1.value) || (document.form1.etcphone2 && document.form1.etcphone2.value) || (document.form1.etcphone3 && document.form1.etcphone3.value))) {
                if (!checknumber(jQuery('input[name=etcphone]', 'form[name=form1]')[0], 9, "휴대폰번호")) {
                    return;
                }
                if (!checkphone(jQuery('input[name=etcphone]', 'form[name=form1]')[0], jQuery('input[name=etcphone]', 'form[name=form1]').val(), '휴대폰번호', true)) {
                    return;
                } else {
                    user_notice_alert('정상입력입니다.', 'mobile', true, false);
                }
            }
        }
    

    if (typeof document.form1.haddress1 != 'undefined') {
        // haddress1 입력안하고 haddress2만 입력
        if (document.form1.haddress1.value.length < 1 && document.form1.haddress2.value.length > 0) {
            user_notice_alert('집주소나 우편번호는 우편번호 검색을 통해서 입력하셔야 합니다.', 'address', false, true);
            return;
        }
        document.form1.haddress.value = document.form1.haddress1.value + "||" + document.form1.haddress2.value;
    }

    if (typeof document.form1.emailreceive != 'undefined') {
        document.form1.emailreceive[0].disabled = false;
        document.form1.emailreceive[1].disabled = false;
    }

    if (typeof document.form1.smsreceive != 'undefined') {
        document.form1.smsreceive[0].disabled = false;
        document.form1.smsreceive[1].disabled = false;
    }

    if (typeof document.form1.pushreceive != 'undefined') {
        document.form1.pushreceive[0].disabled = false;
        document.form1.pushreceive[1].disabled = false;
    }
    

    
    document.form1.hname.disabled = false;
    //  
    
    

    
    //alert('회원가입 테스트 중');
    //return ;
    submitsend();
}

function policy_view(type) {
    setTimeout(scrollTo, 0, 0, 1);
    $('#' + type).show();
    //return false;
}

function policy_close(type) {
    $('#layerTermsWrap, #layerPrivercyWrap, #layerThirdPartyWrap, #layerTrustWrap').hide();
}

    if(typeof document.form1.id != "undefined") {
        document.form1.id.value = "";
    }    if(typeof document.form1.email != "undefined") {
        document.form1.email.value = "";
    }    if(typeof document.form1.old_email != "undefined") {
        document.form1.old_email.value = "";
    }    if(typeof document.form1.oldemail != "undefined") {
        document.form1.oldemail.value = "";
    }    if(typeof document.form1.phone != "undefined") {
        document.form1.etc_phone.value = "";
    }    if(typeof document.form1.name != "undefined") {
        document.form1.hname.value = "";
    }    if(typeof document.form1.loginkeyid != "undefined") {
        document.form1.loginkeyid.value = "";
    }    if(typeof document.form1.resno != "undefined") {
        document.form1.resno.value = "";
    }    if(typeof document.form1.resno1 != "undefined") {
        document.form1.resno1.value = "";
    }    if(typeof document.form1.resno2 != "undefined") {
        document.form1.resno2.value = "";
    }    if(typeof document.form1.phone != "undefined") {
        document.form1.hphone.value = "";
    }    if(typeof document.form1.hpost1 != "undefined") {
        document.form1.hpost1.value = "";
    }    if(typeof document.form1.hpost2 != "undefined") {
        document.form1.hpost2.value = "";
    }    if(typeof document.form1.hpost != "undefined") {
        document.form1.hpost.value = "";
    }    if(typeof document.form1.haddress != "undefined") {
        document.form1.haddress.value = "";
    }    if(typeof document.form1.haddress1 != "undefined") {
        document.form1.haddress1.value = "";
    }    if(typeof document.form1.haddress2 != "undefined") {
        document.form1.haddress2.value = "";
    }    if(typeof document.form1.etcphone != "undefined") {
        document.form1.etcphone.value = "";
    }    if(typeof document.form1.password1 != "undefined") {
        document.form1.password1.value = "";
    }    if(typeof document.form1.password2 != "undefined") {
        document.form1.password2.value = "";
    }    if(typeof document.form1.birthday != "undefined") {
        document.form1.birthday.value = "";
    }    if(typeof document.form1.sexcode != "undefined") {
        document.form1.sexcode.value = "";
    }    if(typeof document.form1.hphone1 != "undefined") {
        document.form1.hphone1.value = "";
    }    if(typeof document.form1.hphone2 != "undefined") {
        document.form1.hphone2.value = "";
    }    if(typeof document.form1.hphone3 != "undefined") {
        document.form1.hphone3.value = "";
    }    if(typeof document.form1.etcphone1 != "undefined") {
        document.form1.etcphone1.value = "";
    }    if(typeof document.form1.etcphone2 != "undefined") {
        document.form1.etcphone2.value = "";
    }    if(typeof document.form1.etcphone3 != "undefined") {
        document.form1.etcphone3.value = "";
    }    if(typeof document.form1.greeting != "undefined") {
        document.form1.greeting.value = "";
    }

        //데이터 초기화 함수
function cleardata(id){
    if (document.getElementById(id) != null) {
        document.getElementById(id).value = '';
    }
}

function submitsend() {
    document.form1.action = 'joinproc.jsp';
    document.form1.submit();
}

</script>







</body>

</html>