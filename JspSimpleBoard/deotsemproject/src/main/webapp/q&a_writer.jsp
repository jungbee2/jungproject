<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.sql.*" %>
        <% request.setCharacterEncoding("utf-8");%>

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">


                <script type="text/javascript">

                    function checkForm() {
                        var form = document.writeform;

                        if (form.title.value == "") {
                            alert("제목을 적어주세요.") //경고창 띄움
                            form.title.focus();
                            return;
                        }

                        if (form.name.value == "") {
                            alert("이름을 적어주세요.") //경고창 띄움
                            form.name.focus();
                            return;
                        }

                        if (form.password.value == "") {
                            alert("비밀번호를 적어주세요.") //경고창 띄움
                            form.password.focus();
                            return;
                        }

                        if (form.memo.value == "") {
                            alert("내용을 적어주세요.") //경고창 띄움
                            form.memo.focus();
                            return;
                        }

                        form.submit();
                    }

                </script>
                <title>Insert title here</title>

                <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

                <link rel="stylesheet" type="text/css" href="css/main.css">
                <link rel="stylesheet" type="text/css" href="css/header.css">
                <link rel="stylesheet" type="text/css" href="css/footer.css">
                <link rel="stylesheet" type="text/css" href="css/aos.css">
                <link rel="stylesheet" type="text/css" href="css/loginform.css">
                <link rel="stylesheet" type="text/css" href="css/reset.css">



                <link rel="stylesheet" type="text/css" href="css/shopbrand.css">
                <link rel="stylesheet" type="text/css" href="css/common_about.css">

                <link rel="stylesheet" type="text/css" href="css/notice.css">

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

<Br>
<br>
<br>

                                <div class="cate-wrap">
                                    <div class="bcate"><a href="" class="-mos">Q&A</a></div>
                                </div>

<Br>
<br>
<br>
                                <form name="writeform" method=post action="q&awrite_ok.jsp">

                                    <div class="page-body">

                                        <!-- 게시판 리스트 -->
                                        <div class="bbs-hd">
                                            <ul class="link">
                                                <li class="last">
                                                    <a href="board.html?code=aake_board2">Notice</a>
                                                </li>
                                                <li>
                                                    <a href="board.html?code=aake">Q &amp; A</a>
                                                </li>
                                                <li>
                                                    <a href="board.html?code=aake_board1">Review</a>
                                                </li>
                                                <li>
                                                    <a href="board.html?code=aake_board4">직원채용</a>
                                                </li>
                                                <li>
                                                    <a href="board.html?code=aake_board3">입고지연</a>
                                                </li>
                                            </ul>
                                        </div><!-- .bbs-hd -->
                                        <!-- //게시판 리스트 -->



                                        <div class="bbs-table-write">
                                            <form name="form1" action="board.html" method="post"
                                                enctype="multipart/form-data" style="position:relative;"
                                                autocomplete="off">
                                                <div id="passimg" name="passimg"
                                                    style=" position:absolute; visibility:hidden;z-index:999; "></div>
                                                <input type="hidden" name="attach1" value="">
                                                <input type="hidden" name="type" value="i">
                                                <input type="hidden" name="data" value="yes">
                                                <input type="hidden" name="code" value="aake">
                                                <input type="hidden" name="num1" value="">
                                                <input type="hidden" name="num2" value="">
                                                <input type="hidden" name="page" value="1">
                                                <input type="hidden" name="ok" value="N">
                                                <input type="hidden" name="board_cate" value="">
                                                <input type="hidden" name="b_score[1]" value="">
                                                <input type="hidden" name="b_score[2]" value="">
                                                <input type="hidden" name="b_score[3]" value="">
                                                <input type="hidden" name="b_score[4]" value="">
                                                <input type="hidden" name="b_score[5]" value="">

                                                <input type="hidden" name="branduid" value="">
                                                <input type="hidden" name="BRO_CHK_KEY"
                                                    value="d7e13cb5320587d6aa8017ce6efbf4edfefca62fe6e3db20d6ec498842f3848b">
                                                <input type="hidden" name="lock" value="Y">
                                                <fieldset>
                                                    <legend>일반게시판 쓰기</legend>
                                                    <table summary="">
                                                        <caption>게시판 글쓰기</caption>
                                                        <colgroup>
                                                            <col width="135">
                                                            <col width="395">
                                                            <col width="155">
                                                            <col width="*">
                                                        </colgroup>
                                                        <tbody>
                                                            <tr>
                                                                <th>
                                                                    <div>이름</div>
                                                                </th>
                                                                <td>
                                                                    <div><input id="bw_input_writer" type="text"
                                                                            name="name"
                                                                            class="MS_input_txt input_style1"></div>
                                                                </td>

                                                            </tr>
                                                            <tr>
                                                                <th>
                                                                    <div>비밀번호</div>
                                                                </th>
                                                                <td>
                                                                    <div>
                                                                        <input id="bw_input_passwd" type="password"
                                                                            name="password"
                                                                            class="MS_input_txt input_style">
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th>
                                                                    <div>제목</div>
                                                                </th>
                                                                <td colspan="3">
                                                                    <div class="title">
                                                                        <select name="subhead" class="MS_select">
                                                                            <option value="선택">선택</option>
                                                                            <option value="상품문의">상품문의</option>
                                                                            <option value="교환문의">교환문의</option>
                                                                            <option value="환불문의">환불문의</option>
                                                                            <option value="기타문의">기타문의</option>
                                                                            <option value="배송문의">배송문의</option>
                                                                            <option value="표시안함">표시안함</option>
                                                                        </select><br>
                                                                        <div class="title_select">
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th>
                                                                    <div>내용</div>
                                                                </th>
                                                                <td colspan="3" class="text_content">
                                                                    <div>
                                                                        <textarea id="MS_text_content" name="memo"
                                                                            wrap="off" onfocus="clear_content()"
                                                                            class="MS_input_txt"
                                                                            style="font-family: 굴림체; margin: 0px 5px 0px 0px; width: 1018px; height: 251px;"></textarea><input
                                                                            type="hidden" name="mobile_content_type"
                                                                            value="">
                                                                    </div>
                                                                </td>

                                                            </tr>

                                                </tbody>
                                                    </table>
                                                </fieldset>
                                                <!-- //게시판 글쓰기 -->
 												<Br>
                                                <Br>
                                                <Br>
                                                <div class="content_row_3">

                                                    <dl class="bbs-link bbs-link-btm" style="">
                                                        <dt></dt>
                                                        <dd style="   display: block;  margin-inline-start: 40px;">
                                                            <input type=button class="CSSbuttonBlack" value="등록"
                                                                onClick="checkForm()" style=" width: 200px !important; 
                                                            height: 40px !important;
                                                            margin: 0 2px;
                                                            font-size: 12px !important; 
   														    line-height: 40px !important;">
                                                            <input type=button class="CSSbuttonWhite" value="취소"
                                                                OnClick="javascript:history.back(-1)" style=" width: 200px !important; 
                                                               	    height: 40px !important; 
                                                                    font-size: 12px !important; 
                                                                    margin: 0 2px;
           														    line-height: 40px !important;">
                                                        </dd>
                                                    </dl>
                                                </div>
                                                
                                                <Br>
                                                <Br>
                                                <Br>
                                        </div>
                                    </div>


                                </form>
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
                                            <li><span>Business License</span><span>000-00-00000 [check]</span>
                                                <span>2019
                                                    화성장안</span>
                                            </li>

                                            <li><span>Address</span><span> 경기도 화성시 봉담읍 상리 1182 덧셈 </span></li>
                                            <li><span>Privacy Manager</span><span>안정빈 유지혜</span> </li>
                                            <li class="copy ft_font1">
                                                <span><a>Copyright ©</span>
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