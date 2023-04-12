<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <title>덧셈 마이페이지</title>
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

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jq.js"></script>
    <script type="text/javascript" src="js/aos.js"></script>
    <script type="text/javascript" src="js/scrolloverflow.js"></script>

    <script type="text/javascript" src="js/header.1.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/footer.js"></script>

 </head>
<body>
<%

  request.setCharacterEncoding("UTF-8");

String id = (String)session.getAttribute("id");  
String pwd = (String)session.getAttribute("pwd");  
  

    Connection conn = null;

	PreparedStatement pstmt = null;

	ResultSet rs = null;
	
	
	String dburl = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&useSSL=false";
	String dbid = "root";
	String dbpwd ="multi2020";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(dburl,dbid,dbpwd);
	
	String sql = "SELECT * FROM shop_db WHERE id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    String name = null;
    String email = null;
    String phone = null;
    String addr1 =null;
    String addr2 =null;
    String addr3 =null;
	rs = pstmt.executeQuery();

	
 
	if (rs.next()) {
		
		  name = rs.getString("name");
		  email = rs.getString("email");
		  phone = rs.getString("phone");
		  addr1 = rs.getString("add1");
		  addr2 = rs.getString("add2");
		  addr3 = rs.getString("add3");
		  
	}
      %>
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
      
     <div class="cate-wrap">
                        <div class="bcate"><a href="" class="-mos">MY PAGE</a></div>
                    </div>

 <div id="displayCanvas" class="desktop" data-viewport="desktop">
                        <div id="login" class="login wrapper">
                            <div class="column-wrapper one-column">
                        <div id="aside">
                            
 <div class="lnb-wrap">
        <div class="lnb-bx">
            <h2 class="txt txt1">SHOPPING INFO</h2>
            <div class="lnb">
                <ul>
                                        <li class="first"><a href="/shop/mypage.html?mypage_type=myorder">주문내역</a></li>
                                                            <li><a href="/shop/mypage.html?mypage_type=mycoupon">쿠폰내역</a></li>
                                                            <li><a href="/shop/mypage.html?mypage_type=myreserve">적립금내역</a></li>
                                                                                <li><a href="/shop/mypage.html?mypage_type=myemoney">예치금내역</a></li>
                                                                                <li><a href="/shop/todaygoods.html">오늘본상품</a></li>
                                                            <li><a href="/shop/mypage.html?mypage_type=mywishlist">상품 보관함</a></li>
                                                            <li><a href="/shop/mypage.html?mypage_type=myplace">주소록 관리</a></li>
                                    </ul>
            </div>
        </div>
        <div class="lnb-bx">
            <h2 class="txt txt3">CUSTOMER INFO</h2>
            <div class="lnb">
                <ul>
                                        <li class="first"><a href="update.jsp;">회원정보변경</a></li>
                                                            <li><a href="delete.jsp;">회원정보탈퇴신청</a></li>
                                    </ul>
            </div>
        </div>
    </div><!-- .lnb-wrap -->
    
    </div>
    
</div><!-- #aside -->

<hr />          
   <div id="content">
                <div id="mypage">
                    <div class="page-body">
                        <!-- 회원 정보 -->
                        <div class="info">
                            <div class="user">
                                <div class="user-img"></div>
                                <div class="user-info">
                                    <p><%= name%>[<%= id %>]님 <a href="/shop/idinfo.html" class="CSSbuttonWhite CSSbuttonMin">EDIT</a></p>
                                    <div class="box">
                                        <dl>
                                            <dt>전 &nbsp;&nbsp;&nbsp; 화</dt>
                                            <dd><%= phone %></dd>
                                        </dl>
                                        <dl>
                                            <dt>이 메 일</dt>
                                            <dd><%= email %></dd>
                                        </dl>
                                        <dl>
                                            <dt>주 &nbsp;&nbsp;&nbsp; 소</dt>
                                            <dd><%= addr1 %><%=addr2 %><%=addr3 %></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                            <dl class="order">
                                <dt class="tot">총 주문금액 :</dt>
                                <dd class="tot"><strong>0</strong>원</dd>
                                                                <dt>적 립 금</dt>
                                <dd><a href="/shop/mypage.html?mypage_type=myreserve"><strong>2,000</strong>원</a></dd>
                                                                                                <dt>예 치 금</dt>
                                <dd><a href="/shop/mypage.html?mypage_type=myemoney"><strong>0</strong>원</a></dd>
                                                                                                                                <dt>쿠 &nbsp;&nbsp;&nbsp; 폰</dt>
                                <dd><a href="/shop/mypage.html?mypage_type=mycoupon"><strong>0</strong>개</a></dd>
                                                            </dl>
                        </div>
                        <!-- //회원 정보 -->
        </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <hr />


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
                                            <span><a>Copyright ©</span>
                                            <span><b>덧셈</b></span>
                                            <span>allrights reserved</a></span>
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