<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <title>DEOTSEM</title>

    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/footer.css">
    <link rel="stylesheet" type="text/css" href="css/aos.css">
    <link rel="stylesheet" type="text/css" href="css/shopbrand.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/loginform.css">
    <link rel="stylesheet" type="text/css" href="css/notice.css">
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
                        <div class="bcate"><a href="" class="-mos">New item</a></div>
                    </div>

                    <div class="total-sort">
                        <div class="total">
                            TOTAL <strong>3</strong> EA
                        </div>

                        <ul class="sort">

                            <li><a href="javascript:sendsort('viewcnt')"><span>BEST</span></a>
                            </li>

                            <li><a href="javascript:sendsort('price')"><span>LOW PRICE</span></a>
                            </li>

                            <li><a href="javascript:sendsort('price2')"><span>HIGE PRICE</span></a>
                            </li>

                        </ul>
                    </div><!-- //total-sort  -->


                    <div class="item-wrap">

                        <ul class="item-list">

                            <li class="">
                                <div class="item-box ">
                                    <div class="item-thumb mos03">
                                        <a href=""><img class="" src="images/반지/메인반지1.jpg" /></a>
                                        <div class="item-info">
                                            <p class="item-name">덧셈 ring</span></p>
                                            <span class="snap_review_count noset" snap_item_id=""></span>
                                            <p class="item-price">￦9,000</p>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="">
                                <div class="item-box ">
                                    <div class="item-thumb mos03">
                                        <a href=""><img class="" src="images/목걸이/메인목걸이2.jpg" /></a>
                                        <div class="item-info">
                                            <p class="item-name">덧셈 ring</span></p>
                                            <span class="snap_review_count noset" snap_item_id=""></span>
                                            <p class="item-price">￦19,000</p>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li class="">
                                <div class="item-box ">
                                    <div class="item-thumb mos03">
                                        <a href=""><img class="" src="images/집게핀/메인집게핀1.jpg" /></a>
                                        <div class="item-info">
                                            <p class="item-name">덧셈 ring</span></p>
                                            <span class="snap_review_count noset" snap_item_id=""></span>
                                            <p class="item-price">￦19,000</p>
                                        </div>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>

                    <div class="content_row_3">
                        <span class="list_prev_btn">문의사항 이전 버튼</span>
                        <a href="sub_new.html">1</a>
                        <span class="list_next_btn">문의사항 다음 버튼</span>
                    </div>
                </div><!-- .item-wrap -->
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
                            <li><span><b>OPEN.</b></span><span>Mon-Fri 13:30~18:00</span><span>Weekend, Holiday
                                    off</span></li>

                            <li><span><b>BANK INFO.</b> </span><span>국민 000000-00-000000 예금주: 덧셈 </span></li>
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

</body>

</html>