<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html lang="utf-8">

<head>
    <meta charset="UTF-8">
    <meta name="referrer" content="no-referrer-when-downgrade" />
    <title>덧셈 메인페이지</title>

    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="css/aos.css">
    <link rel="stylesheet" type="text/css" href="css/shopbrand.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/loginform.css">
    <link rel="stylesheet" type="text/css" href="css/notice.css">
    <link rel="stylesheet" type="text/css" href="css/mypage.css">
    <link rel="stylesheet" type="text/css" href="css/join2.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/order.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jq.js"></script>
    <script type="text/javascript" src="js/aos.js"></script>
    <script type="text/javascript" src="js/scrolloverflow.js"></script>

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
                        <a href="login.jsp">LOGIN</a>
                    </li>
                    <li class="join">
                        <a href="join.jsp">JOIN US</a>
                    </li>
                    <li>
                        <a href="admin_mypage.jsp">MYPAGE</a>
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

        <!-- ─────────────────────────────────────────────────────────── -->

        <div id="header" class="box">
            <div class="headerTnb mos03">
                <div class="tnbRight">
                    <ul>
                        <li class="join">
                            <a href="join.jsp">JOIN</a>
                            <div class="pointBox">
                                <i class="xi-caret-up-min"></i>
                                <span>2,000 P</span>
                            </div>
                        </li>

                        <li>
                            <a href="login.jsp">LOGIN</a>
                        </li>

                        <li><a href="admin_mypage.jsp">MYPAGE</a></li>

                        <li>
                            <a href="cart.jsp">CART
                                <span class="count">
                                    (<span id="user_basket_quantity" class="user_basket_quantity"></span>)
                                </span>
                            </a>
                        </li>

                        <li><a href="order.jsp">ORDER</a></li>
                        <li><a href="#">SEARCH</a></li>
                    </ul>
                </div>

            </div>

            <div id="ser_mask" class="mos05"></div>

            <div class="headerTop mos03">
                <h1 class="tlogo">
                    <a href="index.jsp">
                        <img src="images/logo.png" alt="로고이미지">
                    </a>
                </h1>
            </div>

            <div class="headerGnb mos03">
                <ul class="category upper">
                    <li>
                        <a href="index.jsp">DEOTSEM</a>
                        <div class="sub-ct -ly1">
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
                        </div>
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

                </ul>
            </div>
        </div>
        

        <!-- 메뉴바 -->
        
        <div id="contentWrapper">
            <div id="contentWrap">
                <div id="content">

                    <!-- 본문 -->
                    <!-- container -->
                    <div id="container">
                        <!-- contents -->
                        <div id="contents">
                        
                           <div class="cate-wrap">
                        <div class="bcate"><a href="" class="-mos">ORDER</a></div>
                    </div>
                    
                    
                    
                         <div class="order">
                         
                            <!-- main -->
                            <main id="order">
                              
                                <form name="pg_form" method="post" action="">
                                </form>
                                <form name="form1" id="order_form" action="" method="post">

                                    <!-- 상품정보 -->
                                    <ul class="prd_order" data-type="vertical" data-open="on" data-checkbok="off">
                                        <li>
                                            <figure>
                                                <div class="basketLeft">
                                                    <a href=""><img
                                                            src=""
                                                            class="response100" alt="상품명" /></a>
                                                </div>
                                                <figcaption class="basketRight">
                                                    <p class="pname bold"></p>
                                                    <br />
                                                    <p>
                                                    </p>
                                                    <p></p>
                                                </figcaption>
                                            </figure>
                                        </li>
                                    </ul>
                                    <!-- //상품정보 -->
                                    <!-- 할인적용 -->
                                    <div class="discountInfo">
                                        <div class="desc">
                                            <p>배송정보 : 100,000원 미만시 3,000원, <a
                                                    href="javascript:alert('아래 지역에 배송비가 추가됩니다.\n조도면,가의도리,산양읍 : 3,000원(10,000,000원 미만시), 제주시,서귀포시 : 3,000원(10,000,000원 미만시), 거제시 둔덕면,사천시 늑도동,통영시 사량면,통영시 욕지면 : 3,000원(10,000,000원 미만시), 제주시 우도면 : 3,000원(10,000,000원 미만시), 울릉군 서면,울릉군 북면,울릉읍 : 3,000원(10,000,000원 미만시), 고흥군 도양읍,고흥군 도화면 : 3,000원(10,000,000원 미만시), 군산시 옥도면,양구읍 웅진리,중구 무의동 : 3,000원(10,000,000원 미만시), 석문면 난지도리,신평면 매산리 : 3,000원(10,000,000원 미만시), 목포시 달동,목포시 율도동 : 3,000원(10,000,000원 미만시), 오천면,벌교읍 창도리,위도면,늑도동,마도동,사천시 신수동 : 3,000원(10,000,000원 미만시), 지곡면 도성리 : 3,000원(10,000,000원 미만시), 낙월면,강화군 서도면,연평면,북도면,백령면,자월면,덕적면,대청면 : 3,000원(10,000,000원 미만시), 경호동,여수시 남면,여수시 화정면,용남면 어의리,용남면 지도리 : 3,000원(10,000,000원 미만시), 군외면 당인리,군외면 불목리,군외면 영풍리,군외면 황진리 : 3,000원(10,000,000원 미만시), 금다리,금일읍,노화읍,보길면,생일면,소안면,완도군 청산면 : 3,000원(10,000,000원 미만시)');">지역별
                                                    <span class="fa fa-info-circle delivery-button"></span></a></p>
                                            <p>지역별/상품개별배송정책에 따라 변동될 수 있습니다.</p>
                                        </div>
                                    </div>
                                    <!-- //할인적용 -->
                                    <!-- 주문자 정보 -->
                                    <section class="orderBody">
                                        <div>
                                            <table>
                                                <colgroup>
                                                    <col width="100" />
                                                    <col width="*" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">주문자 정보</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="order-info-detail">
                                                        <th>주문하신 분</th>
                                                        <td>
                                                            <input type="text" name="sender" form="order_form"
                                                                id="sender" class="MS_input_txt txt-input1" value="" />
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th>연락처</th>
                                                        <td> <input type="tel" name="emergency11" form="order_form"
                                                                id="emergency11" size="4" maxlength="4"
                                                                class="MS_input_txt txt-input3" value=""> -
                                                            <input type="tel" name="emergency12" form="order_form"
                                                                id="emergency12" size="4" maxlength="4"
                                                                class="MS_input_txt txt-input3" value="">
                                                            -
                                                            <input type="tel" name="emergency13" form="order_form"
                                                                id="emergency13" size="4" maxlength="4" minlength=4
                                                                class="MS_input_txt txt-input3" value="">
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th>이메일</th>
                                                        <td> <input type="hidden" name="oldemail" id="oldemail" />
                                                            <input type="hidden" name="email" id="email" />
                                                            <input type="text" name="email1" id="email1"
                                                                class="MS_input_txt" style="width:20%;" maxlength="20"
                                                                form="order_form" />
                                                            <span>@</span>
                                                            <span id="direct_email"
                                                                style="margin-top:3px;display:inline-block">
                                                                <input type="text" name="email3" id="email3" value=""
                                                                    class="MS_input_txt txt-input1" maxlength="25"
                                                                    form="order_form" />
                                                            </span>
                                                            <select name="emailsel" id="emailsel"
                                                                class="MS_select MS_email"
                                                                style="margin-right:5px;width:130px;"
                                                                onchange="viewdirect()">
                                                                <option value='direct'>직접입력</option>
                                                                <option value="naver.com">naver.com</option>
                                                                <option value="hotmail.com">hotmail.com</option>
                                                                <option value="hanmail.net">hanmail.net</option>
                                                                <option value="yahoo.com">yahoo.com</option>
                                                                <option value="nate.com">nate.com</option>
                                                                <option value="korea.com">korea.com</option>
                                                                <option value="chol.com">chol.com</option>
                                                                <option value="gmail.com">gmail.com</option>
                                                                <option value="netian.com">netian.com</option>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </section>
                                    <!-- 주문자 정보 -->
                                    <!-- 배송 정보 -->
                                    <section class="orderBody">
                                        <div>
                                            <table>
                                                <colgroup>
                                                    <col width="100" />
                                                    <col width="*" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">배송 정보</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td colspan="2"
                                                            style="padding: 6px 10px; background-color: #fff; text-align: right;">
                                                            <label> <input type="checkbox" name="same" form="order_form"
                                                                    id="same" onclick="copydata()"> 주문자 정보 자동 입력</label>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th>받으실분</th>
                                                        <td> <input type="text" name="receiver" form="order_form"
                                                                id="receiver" class="MS_input_txt txt-input1"
                                                                value="" /></td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th>우편번호</th>
                                                        <td>
                                                            <input name="post1" id="post1" form="order_form"
                                                                style="width:50px;" class="MS_input_txt txt-input2"
                                                                onclick='this.blur();post();'>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th></th>
                                                        <td><a href="javascript:post();" class="btn_Grey">우편번호 찾기</a>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th>주소</th>
                                                        <td> <input type="text" name="address1" form="order_form"
                                                                id="address1" size="50" class="MS_input_txt txt-input1"
                                                                readonly>
                                                            <input type="hidden" name="old_address" form="order_form"
                                                                id="old_address" value="">
                                                            <input type="hidden" name="old_home_address"
                                                                form="order_form" id="old_home_address" value="">
                                                            <input type="hidden" name="old_offi_address"
                                                                form="order_form" id="old_offi_address" value="">
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th></th>
                                                        <td> <input type="text" name="address2" form="order_form"
                                                                id="address2" size="50" class="MS_input_txt txt-input1">
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th>연락처1</th>
                                                        <td> <input type="tel" name="emergency31" form="order_form"
                                                                id="emergency31" size="4" maxlength="4"
                                                                class="MS_input_txt txt-input3" value=""> -
                                                            <input type="tel" name="emergency32" form="order_form"
                                                                id="emergency32" size="4" maxlength="4"
                                                                class="MS_input_txt txt-input3" value="">
                                                            -
                                                            <input type="tel" name="emergency33" form="order_form"
                                                                id="emergency33" size="4" maxlength="4" minlength=4
                                                                class="MS_input_txt txt-input3" value="">
                                                        </td>
                                                    </tr>
                                                    <tr class="order-info-detail">
                                                        <th>연락처2</th>
                                                        <td> <input type="tel" name="emergency21" form="order_form"
                                                                id="emergency21" size="4" maxlength="4" value=""
                                                                class="MS_input_txt txt-input3"> -
                                                            <input type="tel" name="emergency22" form="order_form"
                                                                id="emergency22" size="4" maxlength="4"
                                                                class="MS_input_txt txt-input3" value="">
                                                            -
                                                            <input type="tel" name="emergency23" form="order_form"
                                                                id="emergency23" size="4" maxlength="4" minlength=4
                                                                class="MS_input_txt txt-input3" value="">
                                                        </td>
                                                    </tr>
                                                    <tr style="border-top: 1px solid #EEE;">
                                                        <th>주문메세지</th>
                                                        <td> <textarea name="message" form="order_form" id="message"
                                                                cols="50" rows="5"
                                                                class="MS_textarea txt-area1"></textarea>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </section>
                                    <!-- //배송 정보 -->

                                    <section class="orderBody">
                                        <div>
                                            <table>
                                                <colgroup>
                                                    <col width="100" />
                                                    <col width="*" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">결제정보</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th>상품금액</th>
                                                        <td><span class="op-total block-op-product-price"
                                                                price="257000">257,000</span>원</td>
                                                    </tr>
                                                    <tr>
                                                        <th>배송비</th>
                                                        <td>
                                                            <div class="base"><a class="minus"
                                                                    style="display:none;">-</a><span
                                                                    class="op-total block-op-delivery-price"
                                                                    price="0">0</span> <span
                                                                    id="block_op_delivery_unit">원</span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>할인금액</th>
                                                        <td>
                                                            <div class="base"><a class="minus"
                                                                    style="display:none;">-</a><span
                                                                    class="op-total block-op-sale-price"
                                                                    price="0">0</span> 원</div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>추가금액</th>
                                                        <td>
                                                            <div class="base"><a class="minus"
                                                                    style="display:none;">-</a><span
                                                                    class="op-total block-op-add-price"
                                                                    price="0">0</span> 원</div>
                                                        </td>
                                                    </tr>
                                                    <tr class="total">
                                                        <th>결제 예정금액</th>
                                                        <td><strong><span class="block-op-sum-price"
                                                                    price="">0</span> 원</strong></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </section>

                                    <!-- 결제 선택 -->
                                    <div class="pay-info orderBody">
                                        <table>
                                            <colgroup>
                                                <col width="100" />
                                                <col width="*" />
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th colspan="2">결제 선택</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <tr>
                                                    <td>
                                                        <div class="pay-info">

                                                            <dl class="kakaopay">
                                                                <dt>
                                                                    <label>
                                                                        <span>카카오페이</span>
                                                                        <em><span
                                                                                class='op-card-dc-price fc-red'></span></em>
                                                                        <input type='radio' name='radio_paymethod'
                                                                            form='order_form'
                                                                            class="chk-rdo MS_input_radio"
                                                                            checked='checked' disabled='disabled'
                                                                            value='KAKAOPAY' /> </label>
                                                                </dt>
                                                                <dd>
                                                                    <ul>
                                                                        <li>카카오톡에서 신용/체크카드 연결하고, 결제도 지문으로 쉽고 편리하게 이용하세요!
                                                                        </li>
                                                                        <li>본인명의 스마트폰에서 본인명의 카드 등록 후 사용 가능</li>
                                                                        <li>(카드등록 : 카카오톡 > 더보기 > 카카오페이 > 카드)</li>
                                                                        <li>이용가능 카드사 : 모든 국내 신용/체크카드</li>
                                                                        <li>카드 결제 시, 결제금액 200만원 이상일 경우 ARS추가 인증이 필요합니다.
                                                                            카카오머니 결제시는 추가인증 없음</li>
                                                                    </ul>
                                                                </dd>
                                                            </dl>
                                                            <dl class="bank">
                                                                <dt>
                                                                    <label>
                                                                        <span>무통장</span>
                                                                        <em><span
                                                                                class='op-bank-dc-price fc-red'></span></em>
                                                                        <input type='radio' name='radio_paymethod'
                                                                            form='order_form'
                                                                            class="chk-rdo MS_input_radio" value='B' />
                                                                    </label>
                                                                </dt>
                                                                <dd>
                                                                    <ul>
                                                                        <li>
                                                                            입금자명 : <input type='text' name='bankname'
                                                                                form='order_form'
                                                                                class="MS_input_txt txt-input" value=''
                                                                                size='12' maxlength='12' /> </li>
                                                                        <li>
                                                                            계좌 : <select name="pay_data"
                                                                                form="order_form"
                                                                                class="MS_input_select">
                                                                                <option value="">입금 계좌번호 선택(반드시 주문자 성함으로
                                                                                    입금)</option>
                                                                                <option value='0'>국민은행 000000-00-000000
                                                                                    (예금주:덧셈)</option>

                                                                            </select> <br />
                                                                        </li>
                                                                        <li>
                                                                            결제방식별 할인은 결제시에 반영됩니다.
                                                                        </li>
                                                                    </ul>
                                                                </dd>
                                                            </dl>
                                                            <dl class="card">
                                                                <dt>
                                                                    <label>
                                                                        <span>신용카드</span>
                                                                        <em><span
                                                                                class='op-card-dc-price fc-red'></span></em>
                                                                        <input type='radio' name='radio_paymethod'
                                                                            form='order_form'
                                                                            class="chk-rdo MS_input_radio"
                                                                            disabled='disabled' value='C' /> </label>
                                                                </dt>
                                                                <dd>
                                                                    <ul>
                                                                        <li>
                                                                            결제방식별 할인은 결제시에 반영됩니다.
                                                                        </li>
                                                                    </ul>
                                                                </dd>
                                                            </dl>
                                                            <dl class="phone">
                                                                <dt>
                                                                    <label>
                                                                        <span>휴대폰요금 결제</span>
                                                                        <em><span
                                                                                class='op-hp-dc-price fc-red'></span></em>
                                                                        <input type='radio' name='radio_paymethod'
                                                                            form='order_form'
                                                                            class="chk-rdo MS_input_radio"
                                                                            disabled='disabled' value='D' /> </label>
                                                                </dt>
                                                                <dd>
                                                                    <ul>
                                                                        <li>
                                                                            결제후, 핸드폰 요금청구서에 '소액결제'로 표시됩니다.
                                                                        </li>
                                                                        <li>
                                                                            결제후, 결제건의 취소는 해당 달에만 가능합니다.
                                                                        </li>
                                                                        <li>
                                                                            결제방식별 할인은 결제시에 반영됩니다.
                                                                        </li>
                                                                    </ul>
                                                                </dd>
                                                            </dl>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- //결제 선택 -->

                                    <!-- 증빙신청 태그 추가시 임의로 태그를 제거하게 되면 결제 등 정상 동작이 불가 할 수 있습니다 !!! -->
                                    <!-- //증빙 신청 -->
                                    <div id="evidence" style="display:none;" class="evidence">
                                        <div class="pay-info orderBody">
                                            <table>
                                                <colgroup>
                                                    <col width="100" />
                                                    <col width="*" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th colspan="2">증빙 신청</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <ul>
                                                                <li
                                                                    style="padding: 6px 10px 6px 10px; background-color: #fff;">
                                                                    <input type="radio" name="evidencecheck"
                                                                        form="order_form" onclick="" value="N"
                                                                        checked /> 신청안함
                                                                    <input type="radio" name="evidencecheck"
                                                                        form="order_form" onclick="" value="cashbill"
                                                                        class="radio-evidence-cashbill" /> 현금영수증
                                                                </li>
                                                                <li>
                                                                    <div id="evidence_data">
                                                                        <script type='text/javascript'
                                                                            src="/js/check.js"></script>
                                                                        <div id="evidence_donot_data"
                                                                            style="display:none; color:red; padding-left: 10px; font-size: 0.85em; border-bottom: 1px solid #e0e0e0; ">
                                                                            * 투명한 온라인 거래를 위해서 현금영수증 의무발행을 사용하고
                                                                            있습니다.<br />* 현금영수증을 신청하지 않아도 의무발행제도에 의하여
                                                                            '국세청 발급번호 010-000-1234'로 발행 됩니다. </div>
                                                                        <div id="evidence_cashbill_data"
                                                                            style="display:none;">
                                                                            <dl>
                                                                                <dt><span>신청방법</span></dt>
                                                                                <dd>
                                                                                    <div id="cashbilltype">
                                                                                        <select name="evidence_banktype"
                                                                                            class="bank-type"
                                                                                            onchange="togglecashbilltype(this.value)">
                                                                                            <option value='0' selected>
                                                                                                핸드폰 번호
                                                                                            <option value='1'>국세청 현금영수증
                                                                                                카드
                                                                                            <option value='2'>사업자 번호
                                                                                        </select>
                                                                                    </div>
                                                                                </dd>
                                                                            </dl>
                                                                            <div id="evidence_cashbill_tel">
                                                                                <dl>
                                                                                    <dt><span>휴대폰 번호</span></dt>
                                                                                    <dd> <input type="tel"
                                                                                            name="mobilephone" size="5"
                                                                                            maxlength="3"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onkeyup="nextfocus(this.form['mobilephone'][0], this.form['mobilephone'][1], 3);"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                        -
                                                                                        <input type="tel"
                                                                                            name="mobilephone" size="5"
                                                                                            maxlength="4"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onkeyup="nextfocus(this.form['mobilephone'][1], this.form['mobilephone'][2], 4);"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                        -
                                                                                        <input type="tel"
                                                                                            name="mobilephone" size="5"
                                                                                            maxlength="4"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />&nbsp;<span
                                                                                            style="display: none;"><input
                                                                                                type="checkbox"
                                                                                                name="reset" />초기화</span>
                                                                                        </br>
                                                                                    </dd>
                                                                                </dl>
                                                                            </div>
                                                                            <div id="evidence_cashbill_card"
                                                                                style="display:none">
                                                                                <dl>
                                                                                    <dt><span>카드 번호</span></dt>
                                                                                    <dd> <input type="tel"
                                                                                            name="tax_card_number"
                                                                                            size="5" maxlength="4"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onkeyup="nextfocus(this.form['tax_card_number'][0], this.form['tax_card_number'][1], 4);"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                        -
                                                                                        <input type="tel"
                                                                                            name="tax_card_number"
                                                                                            size="5" maxlength="4"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onkeyup="nextfocus(this.form['tax_card_number'][1], this.form['tax_card_number'][2], 4);"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                        -
                                                                                        <input type="tel"
                                                                                            name="tax_card_number"
                                                                                            size="5" maxlength="4"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onkeyup="nextfocus(this.form['tax_card_number'][2], this.form['tax_card_number'][3], 4);"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                        -
                                                                                        <input type="tel"
                                                                                            name="tax_card_number"
                                                                                            size="6" maxlength="6"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            style="width:58px;"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                    </dd>
                                                                                </dl>
                                                                            </div>
                                                                            <div id="evidence_cashbill_company"
                                                                                style="display:none">
                                                                                <dl>
                                                                                    <dt><span>사업자 번호</span></dt>
                                                                                    <dd> <input type="tel" name="crn"
                                                                                            size="4" maxlength="3"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onkeyup="nextfocus(this.form['crn'][0], this.form['crn'][1], 3);"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                        -
                                                                                        <input type="tel" name="crn"
                                                                                            size="3" maxlength="2"
                                                                                            class="MS_input_txt txt-input w60"
                                                                                            onkeyup="nextfocus(this.form['crn'][1], this.form['crn'][2], 2);"
                                                                                            onKeyPress="InpuOnlyPhone(this)" />
                                                                                        -
                                                                                        <input type="tel" name="crn"
                                                                                            size="6" maxlength="5"
                                                                                            class="MS_input_txt txt-input w60" />
                                                                                    </dd>
                                                                                </dl>
                                                                                <dl>
                                                                                    <dt><span>업체명</span></dt>
                                                                                    <dd> <input type="text"
                                                                                            name="crname" size="16"
                                                                                            maxlength="20"
                                                                                            class="MS_input_txt txt-input">
                                                                                    </dd>
                                                                                </dl>
                                                                            </div>
                                                                        </div>
                                                                        <div id="evidence_taxbill_data"
                                                                            style="display:none;">
                                                                            <dl>
                                                                                <dt><span>신청자명</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>휴대폰번호</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>이메일</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>사업자번호</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>상호(법인명)</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>대표자명</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>사업장주소</span></dt>
                                                                                <dd>
                                                                                    <a href=""
                                                                                        class="btn_search_post"><span>우편번호
                                                                                            찾기</span></a>
                                                                                    <br />

                                                                                </dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>업태</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                            <dl>
                                                                                <dt><span>종목</span></dt>
                                                                                <dd></dd>
                                                                            </dl>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div> <!-- //증빙 신청 -->

                                    <!-- 고급형 사은품 선택화면 -->

                                    <!-- 개인정보처리방침 -->
                                    <div id="join" class="wrapper">
                                        <div class="privacy-wrap tit-page-bull">
                                            <h5><em></em>개인정보 수집.이용</h5>
                                            <div class="cont">
                                                <div class="tb-style">
                                                    <table>
                                                        <colgroup>
                                                            <col width="100%">
                                                        </colgroup>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    - 목적 : 서비스 제공(요금정산, 콘텐츠 제공, 구매 및 요금결제, 물품배송, 금융거래 본인
                                                                    인증 및 금융서비스)<br>
                                                                    - 항목 : 구매자 정보(이름, 연락처, 이메일),수취인 정보(이름, 연락처, 주소)<br>
                                                                    - 보유기간 : <span
                                                                        style="font-size:14px; font-weight: bold;">주문일로
                                                                        부터 90일까지(관계 법령에 따라 필요 시,일정기간 보유)</span><br>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <div class="mt5">
                                                        * 동의하셔야 서비스를 이용하실 수 있습니다.
                                                    </div>
                                                    <div class="control-area txt-c">
                                                        <p class="chk pb5"><label><input type="radio"
                                                                    name="new_privacy_agree" form="order_form"
                                                                    value="Y" /> 동의함</label></p>
                                                        <p class="chk"><label><input type="radio"
                                                                    name="new_privacy_agree" form="order_form" value="N"
                                                                    checked /> 동의안함</label></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //개인정보처리방침 -->

                                    <div id="join" class="wrapper">
                                        <div class="hd">
                                            <h5>주문동의</h5>
                                        </div>
                                        <div class="cont">
                                            <div class="payagree">
                                                <label> <input type="checkbox" id="pay_agree" name="pay_agree"
                                                        form="order_form" /> 상기 결제정보를 확인하였으며, 구매진행에 동의합니다.</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="price-total-info-bottom">
                                        최종 결제금액
                                        <em class="txt-price"><span id="op_total_price">257,000</span></em>원
                                    </div>

                                    <div class="pd10 btn_next">
                                        <a href="javascript:send();" class="btn_Red all-ok"><span>결제하기</span></a>
                                        <a href="javascript:history.back();" class="btn_White"><span>이전</span></a>
                                    </div>
                                </form><!-- 팝업 -->
                                <!-- 사용 쿠폰 선택 -->
                                <!-- //사용 쿠폰 선택 -->
                                <div id="layerTermsWrap">
                                    <div class="layer">
                                        <div class="layer-pop">
                                            <h3>청약철회</h3>
                                            <div class="txt">
                                            </div>
                                            <!-- //txt -->
                                            <a href="javascript:policy_close();" class="close"><span
                                                    class="fa fa-times fa-2x"></span></a>
                                        </div>
                                        <!-- //layer-pop -->
                                    </div>
                                    <!-- //layer -->
                                </div><!-- 이용약관 팝업 -->
                                <div id="layerContractWrap">
                                    <div class="layer">
                                        <div class="layer-pop">
                                            <h3>이용약관</h3>
                                            <div class="txt">
                                                인터넷 쇼핑몰 덧셈』회원 약관<br />
                                                <br />
                                                제1조(목적)<br />
                                                이 약관은 [덧셈] 회사(전자상거래 사업자)가 운영하는 [덧셈] 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련
                                                서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로
                                                합니다.<br />
                                                <br />
                                                ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」<br />
                                                <br />
                                                제2조(정의)<br />
                                                ① “몰”이란 덧셈 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를
                                                이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도
                                                사용합니다.<br />
                                                <br />
                                                ② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br />
                                                <br />
                                                ③ ‘회원’이라 함은 “몰”에 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를
                                                말합니다.<br />
                                                <br />
                                                ④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.<br />
                                                <br />
                                                제3조 (약관 등의 명시와 설명 및 개정) <br />
                                                ① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함),
                                                전화번호·모사전송번호·전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자 등을 이용자가 쉽게 알 수 있도록 덧셈
                                                사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수
                                                있습니다.<br />
                                                <br />
                                                ② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은 중요한 내용을
                                                이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.<br />
                                                <br />
                                                ③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」,
                                                「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」,
                                                「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.<br />
                                                <br />
                                                ④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터
                                                적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고
                                                공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br />
                                                <br />
                                                ⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에
                                                대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을
                                                제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.<br />
                                                <br />
                                                ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에
                                                관한 법률, 공정거래위원회가 정하는 「전자상거래 등에서의 소비자 보호지침」 및 관계법령 또는 상관례에 따릅니다.<br />
                                                <br />
                                                제4조(서비스의 제공 및 변경) <br />
                                                ① “몰”은 다음과 같은 업무를 수행합니다.<br />
                                                1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br />
                                                2. 구매계약이 체결된 재화 또는 용역의 배송<br />
                                                3. 기타 “몰”이 정하는 업무<br />
                                                <br />
                                                ② “몰”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의
                                                내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을
                                                게시한 곳에 즉시 공지합니다.<br />
                                                <br />
                                                ③ “몰”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할
                                                경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.<br />
                                                <br />
                                                ④ 전항의 경우 “몰”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는
                                                그러하지 아니합니다.<br />
                                                <br />
                                                제5조(서비스의 중단) <br />
                                                ① “몰”은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로
                                                중단할 수 있습니다.<br />
                                                <br />
                                                ② “몰”은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다.
                                                단, “몰”이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br />
                                                <br />
                                                ③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “몰”은 제8조에 정한
                                                방법으로 이용자에게 통지하고 당초 “몰”에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, “몰”이 보상기준 등을 고지하지
                                                아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “몰”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게
                                                지급합니다.<br />
                                                <br />
                                                제6조(회원가입) <br />
                                                ① 이용자는 “몰”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을
                                                신청합니다.<br />
                                                <br />
                                                ② “몰”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.<br />
                                                1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실
                                                후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br />
                                                2. 등록 내용에 허위, 기재누락, 오기가 있는 경우<br />
                                                3. 기타 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우<br />
                                                <br />
                                                ③ 회원가입계약의 성립 시기는 “몰”의 승낙이 회원에게 도달한 시점으로 합니다.<br />
                                                <br />
                                                ④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “몰”에 대하여 회원정보 수정 등의 방법으로 그
                                                변경사항을 알려야 합니다.<br />
                                                <br />
                                                제7조(회원 탈퇴 및 자격 상실 등) <br />
                                                ① 회원은 “몰”에 언제든지 탈퇴를 요청할 수 있으며 “몰”은 즉시 회원탈퇴를 처리합니다.<br />
                                                <br />
                                                ② 회원이 다음 각 호의 사유에 해당하는 경우, “몰”은 회원자격을 제한 및 정지시킬 수 있습니다.<br />
                                                1. 가입 신청 시에 허위 내용을 등록한 경우<br />
                                                2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는
                                                경우<br />
                                                3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br />
                                                4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우<br />
                                                <br />
                                                ③ “몰”이 회원 자격을 제한·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우
                                                “몰”은 회원자격을 상실시킬 수 있습니다.<br />
                                                <br />
                                                ④ “몰”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한
                                                30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br />
                                                <br />
                                                제8조(회원에 대한 통지)<br />
                                                ① “몰”이 회원에 대한 통지를 하는 경우, 회원이 “몰”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.<br />
                                                <br />
                                                ② “몰”은 불특정다수 회원에 대한 통지의 경우 1주일이상 “몰” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만,
                                                회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br />
                                                <br />
                                                제9조(구매신청) <br />
                                                ① “몰”이용자는 “몰”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “몰”은 이용자가 구매신청을 함에 있어서
                                                다음의 각 내용을 알기 쉽게 제공하여야 합니다.<br />
                                                1. 재화 등의 검색 및 선택<br />
                                                2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력<br />
                                                3. 약관내용, 청약철회권이 제한되는 서비스, 배송료·설치비 등의 비용부담과 관련한 내용에 대한 확인<br />
                                                4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시 (예, 마우스 클릭)<br />
                                                5. 재화 등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의<br />
                                                6. 결제방법의 선택<br />
                                                <br />
                                                ② “몰”이 제3자에게 구매자 개인정보를 제공·위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 회원가입
                                                시 미리 포괄적으로 동의를 받지 않습니다. 이 때 “몰”은 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용
                                                목적 및 보유·이용 기간 등을 구매자에게 명시하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조
                                                제1항에 의한 개인정보 처리위탁의 경우 등 관련 법령에 달리 정함이 있는 경우에는 그에 따릅니다.<br />
                                                <br />
                                                제10조 (계약의 성립)<br />
                                                ① “몰”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는
                                                경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야
                                                합니다.<br />
                                                1. 신청 내용에 허위, 기재누락, 오기가 있는 경우<br />
                                                2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우<br />
                                                3. 기타 구매신청에 승낙하는 것이 “몰” 기술상 현저히 지장이 있다고 판단하는 경우<br />
                                                <br />
                                                ② “몰”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.<br />
                                                <br />
                                                ③ “몰”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을
                                                포함하여야 합니다.<br />
                                                <br />
                                                제11조(지급방법)<br />
                                                “몰”에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수 있습니다. 단, “몰”은
                                                이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다.<br />
                                                1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br />
                                                2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br />
                                                3. 온라인무통장입금<br />
                                                4. 전자화폐에 의한 결제<br />
                                                5. 수령 시 대금지급<br />
                                                6. 마일리지 등 “몰”이 지급한 포인트에 의한 결제<br />
                                                7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제 <br />
                                                8. 기타 전자적 지급 방법에 의한 대금 지급 등<br />
                                                <br />
                                                제12조(수신확인통지·구매신청 변경 및 취소)<br />
                                                ① “몰”은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.<br />
                                                ② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할
                                                수 있고 “몰”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한
                                                경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.<br />
                                                <br />
                                                제13조(재화 등의 공급)<br />
                                                ① “몰”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을
                                                배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “몰”이 이미 재화 등의 대금의 전부 또는 일부를
                                                받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “몰”은 이용자가 재화 등의 공급 절차
                                                및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.<br />
                                                <br />
                                                ② “몰”은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 “몰”이 약정
                                                배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “몰”이 고의·과실이 없음을 입증한 경우에는
                                                그러하지 아니합니다.<br />
                                                <br />
                                                제14조(환급)<br />
                                                “몰”은 이용자가 구매신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게
                                                통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를
                                                취합니다.<br />
                                                <br />
                                                제15조(청약철회 등)<br />
                                                ① “몰”과 재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른
                                                계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화 등의
                                                공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래 등에서의
                                                소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다. <br />
                                                <br />
                                                ② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.<br />
                                                1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한
                                                경우에는 청약철회를 할 수 있습니다)<br />
                                                2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br />
                                                3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br />
                                                4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br />
                                                <br />
                                                ③ 제2항제2호 내지 제4호의 경우에 “몰”이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나
                                                시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.<br />
                                                <br />
                                                ④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해
                                                재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수
                                                있습니다.<br />
                                                <br />
                                                제16조(청약철회 등의 효과)<br />
                                                ① “몰”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 “몰”이
                                                이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」제21조의2에서
                                                정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.<br />
                                                <br />
                                                ② “몰”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체
                                                없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.<br />
                                                <br />
                                                ③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “몰”은 이용자에게 청약철회 등을 이유로
                                                위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회
                                                등을 하는 경우 재화 등의 반환에 필요한 비용은 “몰”이 부담합니다.<br />
                                                <br />
                                                ④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “몰”은 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록
                                                명확하게 표시합니다.<br />
                                                <br />
                                                제17조(개인정보보호)<br />
                                                ① “몰”은 이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다. <br />
                                                <br />
                                                ② “몰”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에
                                                본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.<br />
                                                <br />
                                                ③ “몰”은 이용자의 개인정보를 수집·이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. <br />
                                                <br />
                                                ④ “몰”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는
                                                이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로
                                                합니다.<br />
                                                <br />
                                                ⑤ “몰”이 제3항과 제4항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보보호 책임자의 신원(소속, 성명 및 전화번호,
                                                기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등
                                                「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지
                                                이 동의를 철회할 수 있습니다.<br />
                                                <br />
                                                ⑥ 이용자는 언제든지 “몰”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “몰”은 이에 대해 지체
                                                없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “몰”은 그 오류를 정정할 때까지 당해 개인정보를
                                                이용하지 않습니다.<br />
                                                <br />
                                                ⑦ “몰”은 개인정보 보호를 위하여 이용자의 개인정보를 처리하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한
                                                이용자의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을
                                                집니다.<br />
                                                <br />
                                                ⑧ “몰” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체
                                                없이 파기합니다.<br />
                                                <br />
                                                ⑨ “몰”은 개인정보의 수집·이용·제공에 관한 동의란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에
                                                관한 이용자의 동의거절시 제한되는 서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의
                                                동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.<br />
                                                <br />
                                                제18조(“몰“의 의무)<br />
                                                ① “몰”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로
                                                재화·용역을 제공하는데 최선을 다하여야 합니다.<br />
                                                <br />
                                                ② “몰”은 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을
                                                갖추어야 합니다.<br />
                                                <br />
                                                ③ “몰”이 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가
                                                손해를 입은 때에는 이를 배상할 책임을 집니다.<br />
                                                ④ “몰”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br />
                                                <br />
                                                제19조(회원의 ID 및 비밀번호에 대한 의무)<br />
                                                ① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.<br />
                                                <br />
                                                ② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br />
                                                <br />
                                                ③ 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “몰”에 통보하고 “몰”의
                                                안내가 있는 경우에는 그에 따라야 합니다.<br />
                                                <br />
                                                제20조(이용자의 의무) 이용자는 다음 행위를 하여서는 안 됩니다.<br />
                                                1. 신청 또는 변경시 허위 내용의 등록<br />
                                                2. 타인의 정보 도용<br />
                                                3. “몰”에 게시된 정보의 변경<br />
                                                4. “몰”이 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br />
                                                5. “몰” 기타 제3자의 저작권 등 지적재산권에 대한 침해<br />
                                                6. “몰” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br />
                                                7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위<br />
                                                <br />
                                                제21조(연결“몰”과 피연결“몰” 간의 관계)<br />
                                                <br />
                                                ① 상위 “몰”과 하위 “몰”이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된
                                                경우, 전자를 연결 “몰”(웹 사이트)이라고 하고 후자를 피연결 “몰”(웹사이트)이라고 합니다.<br />
                                                <br />
                                                ② 연결“몰”은 피연결“몰”이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을
                                                연결“몰”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.<br />
                                                <br />
                                                제22조(저작권의 귀속 및 이용제한)<br />
                                                ① “몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다.<br />
                                                <br />
                                                ② 이용자는 “몰”을 이용함으로써 얻은 정보 중 “몰”에게 지적재산권이 귀속된 정보를 “몰”의 사전 승낙 없이 복제, 송신,
                                                출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br />
                                                <br />
                                                ③ “몰”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.<br />
                                                <br />
                                                제23조(분쟁해결)<br />
                                                ① “몰”은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를
                                                설치·운영합니다.<br />
                                                <br />
                                                ② “몰”은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는
                                                이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br />
                                                <br />
                                                ③ “몰”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시·도지사가
                                                의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.<br />
                                                <br />
                                                제24조(재판권 및 준거법)<br />
                                                ① “몰”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를
                                                관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는
                                                민사소송법상의 관할법원에 제기합니다.<br />
                                                <br />
                                                ② “몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.<br />
                                                <br />
                                                본 약관은 2018.05.09부터 적용됩니다.<br />
                                            </div>
                                            <!-- //txt -->
                                            <a href="javascript:policy_close();" class="close"><span
                                                    class="fa fa-times fa-2x"></span></a>
                                        </div>
                                        <!-- //layer-pop -->
                                    </div>
                                    <!-- //layer -->
                                </div>

                                <div id="layerPrivercyWrap">
                                    <div class="layer">
                                        <div class="layer-pop">
                                            <h3>개인정보처리방침</h3>
                                            <div class="txt">
                                            </div>
                                            <!-- //txt -->
                                            <a href="javascript:policy_close();" class="close"><span
                                                    class="fa fa-times fa-2x"></span></a>
                                        </div>
                                        <!-- //layer-pop -->
                                    </div>
                                    <!-- //layer -->
                                </div><!-- //이용약관 팝업 -->
                                <!-- 배송지 검색 -->
                                <div id="addrSearch" class="step-comm">
                                    <div class="layer">
                                        <div class="layer-pop">
                                            <h3>배송지 검색</h3>
                                            <div class="txt">
                                                <div id="searchStep01" class="step-comm">
                                                    <p class="addr_type">
                                                        <label><input type='radio' name='posttype' value='new'
                                                                title='도로명 주소 검색' form='addr_search' /> 도로명 검색</label>
                                                        <label><input type='radio' name='posttype' value='newdong'
                                                                title='도로명 주소 검색' form='addr_search'
                                                                checked='checked' /> 지번+도로명 검색</label>
                                                    </p>
                                                    <div id="MS_addr_type_load" class="MS_addr_type_area">
                                                        <div class="msg-wrap">
                                                            <p class="msg01 bold"><span
                                                                    class="msg01-highlight">도로명(건물명)</span>을 2글자 이상
                                                                입력하세요.</p>
                                                            <p class="msg02">예)강남대로100길, 가산디지털1로</p>
                                                            <p class="msg03">해외 주소의 경우 "해외"를 입력하세요.<br />(To ship to
                                                                foreign country, please enter "oversea")</p>
                                                        </div>
                                                    </div>
                                                    <div id="MS_addr_type_number_to_load" class="MS_addr_type_area">
                                                        <div class="msg-wrap">
                                                            <p class="msg01 bold"><span
                                                                    class="msg01-highlight">도로명(건물명)</span>을 두 단어 이상
                                                                입력하세요.</p>
                                                            <p class="msg02">예) 가산동 우림라이온스밸리, 압구정 로데오</p>
                                                            <p class="msg03">해외 주소의 경우 "해외"를 입력하세요.<br />(To ship to
                                                                foreign country, please enter "oversea")</p>
                                                        </div>
                                                    </div>
                                                    <div class="search-form">
                                                        <form name='addr_search' id="addr_search" method='post'
                                                            action='order.info.html' onsubmit="return false;">
                                                            <input type='hidden' name='mode' value='SearchPost' />
                                                            <fieldset>
                                                                <legend>우편번호 검색 폼</legend>
                                                                <span class="keyword"><input type='text'
                                                                        name='address_search' value=''
                                                                        form='addr_search'
                                                                        title='주소를 입력하세요' /></span><button
                                                                    class="btn_Grey" type="submit"
                                                                    onclick="javascript:addr_search_first();">검색</button>
                                                            </fieldset>
                                                        </form>
                                                    </div>
                                                    <div id="searchStep02">
                                                        <h4>주소 선택</h4>
                                                        <select class="addr-list MS_input_select"
                                                            name='addr_search_select' form='addr_search'>
                                                            <option>주소 선택 후, 다음 버튼을 클릭하세요</option>
                                                        </select> <a href="javascript:addr_select_ok();"
                                                            class="btn_Black">다음</a>
                                                    </div>
                                                </div>
                                                <div id="searchStep03" class="step-comm">
                                                    <div class="msg-wrap">
                                                        <p>상세 주소를 입력해주세요.</p>
                                                    </div>
                                                    <div class="detail-addr">
                                                        <form name='complete_search' id='complete_search'>
                                                            <fieldset>
                                                                <legend>상세 주소 입력 폼</legend>
                                                                <table>
                                                                    <tr class="detail-addrPost">
                                                                        <th>우편번호</th>
                                                                        <td>
                                                                            <input type='text' name='post1'
                                                                                form='complete_search' value=''
                                                                                class="txt-input num-input MS_input_txt"
                                                                                title='우편번호' readonly='readonly' />
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="detail-addrAddress">
                                                                        <th>주소</th>
                                                                        <td><input type='text' name='address1'
                                                                                form='complete_search' value=''
                                                                                class="txt-input addr-input MS_input_txt"
                                                                                title='시, 군, 동' readonly='readonly' />
                                                                            <input type='text' name='address2'
                                                                                form='complete_search' value=''
                                                                                class="txt-input addr-input MS_input_txt"
                                                                                title='상세 주소' /></td>
                                                                    </tr>
                                                                </table>
                                                                <div class="btn-type01 btn-ctrl">
                                                                    <a href="javascript:addr_ok();"
                                                                        class="btn_Black">확인</a>
                                                                </div>
                                                            </fieldset>
                                                        </form>
                                                    </div>
                                                    <!-- //detail-addr -->
                                                </div>
                                            </div>
                                            <a href="javascript:addr_close();" class="close"><span
                                                    class="fa fa-times fa-2x"></span></a>
                                        </div>
                                    </div>
                                </div><!-- //배송지 검색 -->

                                <!-- //팝업 -->
                            </main>
                            <!-- //main -->
                            
                            </div>
                        </div>
                        <!-- //contents -->
                    </div>
                    <!-- //container -->
                    <!-- //본문 -->



                </div>
            </div>
        </div>

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
                                <li><span><b>OPEN.</b></span><span>Mon-Fri
                                        13:30~18:00</span><span>Weekend,
                                        Holiday
                                        off</span></li>

                                <li><span><b>BANK INFO.</b> </span><span>국민 000000-00-000000 예금주: 덧셈
                                    </span>
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