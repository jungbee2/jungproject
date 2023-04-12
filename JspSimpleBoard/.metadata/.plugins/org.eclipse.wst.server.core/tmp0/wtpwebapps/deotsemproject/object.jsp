<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="uprode.Uprode" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="uprode.UprodeDAO" %>
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
                    <%  if ( id	 == "admin1") { %>
                        <a href="admin_mypage.jsp">MYPAGE</a>
                        <% }  else { %>
                        <a href="mypage.jsp">MYPAGE</a>
                        <% } %>
                    </li>
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
        
           
          <% 


if (session.getAttribute(id) != null) {
	  id = (String) session.getAttribute("id");
}

  
  String name = null;
  if (request.getParameter("name") != null){
	  name = request.getParameter("name");
  }

  if ( name == null ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 상품입니다.')");
		script.println("history.back();");
		script.println("</script>");
  }
  
  Uprode uprode = new UprodeDAO().getobj(name);
  
  %>
  

        <!-- 메뉴바 -->
        
        
        <div id="contentWrapper">
            <div id="contentWrap">
                <div id="content">
                    <div class="cate-wrap">
                        <div class="bcate"><a href="" class="-mos">
                                <h2><%=uprode.getCategory() %> <%=uprode.getName() %></h2>
                            </a>
                        </div>

                        <div class="shopProductDetail wrapper">
                            <div id="productDetail"
                                class="productDetail wrapper relatedProductPosition_underProductDescription">
                                <div class="top-info clearfix">

                                    <div id="shopProductImgsDiv"
                                        class="content mainImg productImgType_thumbnails ratio_3to4"
                                        imgsrc="/uploadedFiles/146856/product/image_1631540258146.jpg">

                                        <div id="shopProductImgsMainDiv" class="main img-div img imgZoom">


                                            <div class="shopProductImgMainWrapper type_thumbnails sequence_0 on"
                                                data-shopproductsequence="0" '="">
                                                
                                                
                                            <div class="sub img" data-shopproductsequence="1">
                                                <div class="shopProductImgMain type_thumbnails shopProductImgRatio">
                                                    <img src="object_photo/<%=uprode.getPhoto() %>">
                                                </div><!-- 집게 그 작으3-->
                                            </div>
                                        </div>

                                        <div class="shopProductImgMainWrapper type_thumbnails sequence_1" data-shopproductsequence="1" '="">  
                                            </div>
                                        </div><!-- 이줄은 지우면 망가져서 안지우기-->

                                        <div id="shopProductImgsThumbDiv" class="sub img-div">

                                            <div class="sub img" data-shopproductsequence="1">
                                                <div class="shopProductImgRatio">
                                                    <img src="object_photo/<%=uprode.getPhoto2() %>">
                                                </div><!-- 집게 그 작으3-->
                                            </div>
                                            
                                              <div class="sub img" data-shopproductsequence="1">
                                                <div class="shopProductImgRatio">
                                                    <img src="object_photo/<%=uprode.getPhoto3() %>">
                                                </div><!-- 집게 그 작으3-->
                                            </div>
                                            
                                              <div class="sub img" data-shopproductsequence="1">
                                                <div class="shopProductImgRatio">
                                                    <img src="object_photo/<%=uprode.getPhoto4() %>">
                                                </div><!-- 집게 그 작으3-->
                                            </div>
<style>

.sub .shopProductImgMain type_thumbnails shopProductImgRatio img{
width:150px;
height:200px;
}

.sub .shopProductImgRatio img{
width:150px;
height:200px;
}
</style>


                                        </div>

                                    </div>



                                    <div id="shopProductContentInfo" class="content clearfix info align_left">
                                        <div id="shopProductNameWrapper" class="row">
                                            <h1 id="shopProductName" class="row name designSettingElement productName">
                                                <%=uprode.getName() %><br>[MD 추천]</h1>
                                            <div id="shopProductReviewElem" class="designSettingElement text-body hide"
                                                data-product-rating-value="0.0">

                                            </div>
                                        </div>

                                        <div id="shopProductPrice" class="price row designSettingElement">



                                            <span class="productPriceSpan"><%=uprode.getPrice() %>￦</span>



                                        </div>


                                        <div id="productAdditionalInfo"
                                            class="row productInfo designSettingElement text-body">

                                            <div class="point rewardPointRate">
                                                <span class="title">적립금</span>
                                                <span class="rewardPointInfo description">2%
                                                    <span id="shopProductRewardPointInfoBtn"
                                                        class="designSettingElement text-assi icomoon-ic-info middle pointer"></span>
                                                </span>
                                            </div>
                                            <div id="shopProductRewardPointInfo"
                                                class="rewardPoint-wrapper designSettingElement text-body hide">
                                                <div class="rewardPoint-info"><span class="rewardPoint-title">기본
                                                        적립</span><span class="rewardPoint-description">2%</span></div>
                                            </div>


                                            <div id="shopSettingShipmentDiv" class="shipping">
                                                <span class="title">
                                                    배송비
                                                </span>
                                                <span
                                                    class="shopSettingShipmentInfo description js-deliveryPriceText">3,000원
                                                    (50,000원 이상 구매 시 무료)</span>
                                            </div>
                                            <div class="js-extraFeeDescription" style="margin-top: 0;">
                                                <span class="title"></span>
                                                <span class="shopSettingShipmentInfo description">제주 및 도서 산간 3,000원
                                                    추가</span>
                                            </div>

                                            <div id="shopProductDetailSameShippingPolicyProductSearchLink" class="hide">
                                                <span class="title"></span>
                                                <a class="description designSettingElement text-link">함께 구매 시 배송비 절약 상품
                                                    보기</a>
                                            </div>

                                            <div id="shopProductAdditionalFixedOptionPriceDiv"
                                                class="shopProductAdditionalFixedOptionPriceDiv hide">
                                                <span class="title">추가 금액</span>
                                                <span
                                                    class="shopProductAdditionalFixedOptionPriceInfo description"></span>
                                            </div>
                                        </div>

                                        <table border="0" summary=""
                                            class="xans-element- xans-product xans-product-option xans-record-">

                                            <caption>상품 옵션</caption>
                                            <tbody></tbody>
                                            <tbody class="xans-element- xans-product xans-product-option xans-record-">
                                            <br>
                                                <tr>
                                                    <span class="title">color</span>

                                                    <td>
                                                    <Br>
                                                        <select option_product_no="1340"
                                                            option_select_element="ec-option-select-finder"
                                                            option_sort_no="1" option_type="T" item_listing_type="S"
                                                            option_title="color" product_type="product_option"
                                                            product_option_area="product_option_1340_0" name="option1"
                                                            id="product_option_id1" class="ProductOption0"
                                                            option_style="select" required="true">
                                                            <option value="*" selected="" link_image="">- [필수] 옵션을 선택해
                                                                주세요 -
                                                            </option>
                                                            <option value="**" disabled="" link_image="">
                                                                -------------------
                                                            </option>
                                    

                                                        </select>

                                                        <p class="value"></p>

                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                        <div class="miniCart-wrapper designSettingElement text-body hide">
                                            <div class="miniCart-product-info designSettingElement shape">
                                            </div>
                                        </div>
       

<Br>

                                        <tbody class="">
                                        <tr>
                                        <span class="title">
                                      
                                        <input type="number" id="option_box1_quantity" name="quantity_opt[]" autocomplete="off" class="quantity_opt eProductQuantityClass" value="1" product-no="1374">
                                            <td></td>
                                            
                                            
                                            <td class="right">
                                            <span class="quantity_price">
                                                
                                            <input type="hidden" name="option_box_price" class="option_box_price" value="65.46" item_code="P0000CAP000A">
                                        </span> <span class="mileage displaynone" style="display: none;">(<img src=""> &nbsp;<span class="mileage_price">
                                            
                                        </span>)</span>
                                            </td>
                                        </tr>
                                    	</tbody>
                                    	
                                    	
                                
<script>
function count(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  // 더하기/빼기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
	    number = parseInt(number) - 1;
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
	}
</script>


                                    	
                                    	

<Br><Br>
                                        <div class="product-order-summary-wrapper designSettingElement text-body ">
                                            <div class="product-order-summary-info designSettingElement shape">
                                                <div class="product-order-summary-row">
                                                    <span class="title">주문 수량</span>
                                                    <span class="row-content">
                                                        <i class="ico-info-triangle no-ico-hover-effect hide"></i>&nbsp;
                                                        <span id="product-order-total-quantity">0개</span>
                                                    </span>
                                                </div>
                                                <div class="product-order-summary-row">
                                                    <span class="title">총 상품 금액</span>
                                                    <span class="row-content">
                                                        <span id="product-order-total-price">0원</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>


<Br><Br>
         
         
                                        <div id="productActionButtonDiv" class="productActionButtonDiv row">
                                            <div class="normalButton">
                                                <div class="btn-wrapper buyButton">
                                                    <button id="btn_buyNow" class="buyNow designSettingElement button 
                                                                    
                                                                data-is-mini-cart-available=" true"=""
                                                        onclick="require('v2/mall/service/product').detail.handlePurchase('buyNow', event)">
                                                        구매하기
                                                    </button>
                                                </div>
                                                <div class="btn-wrapper cartButton">
                                                    <button id="btn_addToCart" class="addToCart designSettingElement button outline 
                                                                    " data-is-mini-cart-available="true"
                                                        onclick="require('v2/mall/service/product').detail.handlePurchase('', event)">
                                                        장바구니에 담기
                                                    </button>
                                                </div>
                                            </div>

                                        </div>

                                        <div id="shopProductCaptionDiv"
                                            class="row caption designSettingElement text-body">
                                            <span id="shopProductCaption" class="text">

                                                Handmade for DEOTSEM<br>

                                            </span>
                                        </div>


                                    </div>

                                </div>

                                <div class="bottom-info designSettingElement shape">

                                    <div class="productDetailSection">
                                        <div id="productDescriptionDetailPage"
                                            class="title designSettingElement text-body viewDetail ckeditor-content">
                                            <p style="text-align:center"><span style="font-size:14px">
                                                   <%=uprode.getExp1() %></span></p>

                                            <p style="text-align:center">&nbsp;</p>

                                            <p style="text-align:center">&nbsp;</p>

                      

                                            <p style="text-align:center">&nbsp;</p>

                                            <p>&nbsp;</p>

                                            <p>&nbsp;</p>

                                            <p>&nbsp;</p>

                                            <p>&nbsp;</p>

                                            <p>&nbsp;</p>

                                            

                                            <p style="text-align:center"><img class="lozad" alt="" height="637" img
                                                    src="object_photo/<%=uprode.getExp2() %>"
                                                    style="max-height:1080px; max-width:100%; vertical-align:bottom"
                                                    width="538">
                                            </p>
                           

                                            <p>&nbsp;</p>

                                            <p>&nbsp;</p>

                                            <p>&nbsp;</p>
                                            <p>&nbsp;</p>

                                            <p>&nbsp;</p>

                                        </div>
                                    </div>

                                    <div class="productDetailSection">
                                        <div id="productCommonFooter"
                                            class="title designSettingElement text-body viewDetail ckeditor-content">
                                            <blockquote>
                                                <p style="margin-bottom:11px; text-align:justify"><span
                                                        style="font-size:14px"><u><strong>* 공지사항 미숙지 시 발생하는 문제에 대해서는 책임
                                                                지지 않습니다. 아래에도 기재해두었으니 꼭 확인 부탁드립니다.</strong></u></span>
                                                </p>
                                            </blockquote>

                                            <blockquote>
                                                <p style="margin-bottom:11px; text-align:justify"><span
                                                        style="font-size:14px"><u><strong><span
                                                                    style="line-height:107%"><span
                                                                        style="font-family:&quot;맑은 고딕&quot;,sans-serif">*
                                                                        악세사리 소재 및 측정 방법, 보관 방법 등은 게시판에 상세하게
                                                                        기재해두었습니다.&nbsp;</span></span></strong></u></span>
                                                </p>
                                            </blockquote>

                                            <p style="margin-bottom:11px; text-align:justify"><span
                                                    style="font-size:10pt"><span style="line-height:107%"><span
                                                            style="font-family:&quot;맑은 고딕&quot;,sans-serif">택배사 : CJ
                                                            대한통운 (1588-1255)</span></span></span></p>

                                            <p style="margin-bottom:11px; text-align:justify"><span
                                                    style="font-size:10pt"><span style="line-height:107%"><span
                                                            style="font-family:&quot;맑은 고딕&quot;,sans-serif">10만원 이상 구매
                                                            시 무료배송 </span></span></span></p>

                                            <p style="margin-bottom:11px; text-align:justify"><span
                                                    style="font-size:10pt"><span style="line-height:107%"><span
                                                            style="font-family:&quot;맑은 고딕&quot;,sans-serif">&nbsp;상품은
                                                            결제 확인 후 준비 되며, 영업일 기준 2~7일 안에 출고 됩니다. (당일 발송 상품 및 핸드 메이드 제품
                                                            제외)</span></span></span></p>

                                            <p style="margin-bottom:11px; margin-left:51px; text-align:justify"><span
                                                    style="font-size:10pt"><span style="line-height:107%"><span
                                                            style="font-family:&quot;맑은 고딕&quot;,sans-serif">단, 의류 및 잡화는
                                                            거래처의 사정에 따라 최소 1주일에서 4주 정도의 배송 지연이 있을 수 있으며, 지연 상황은 개별 안내
                                                            드리겠습니다. 이 점 꼭 참고 부탁드립니다. </span></span></span></p>

                                            <p style="margin-bottom:11px; margin-left:51px; text-align:justify"><span
                                                    style="font-size:10pt"><span style="line-height:107%"><span
                                                            style="font-family:&quot;맑은 고딕&quot;,sans-serif">영업일 기준 10일
                                                            이상 지연 시 부분 발송 처리 됩니다.</span></span></span></p>

                                            <p style="margin-bottom:11px; text-align:justify"><span
                                                    style="font-size:10pt"><span style="line-height:107%"><span
                                                            style="font-family:&quot;맑은 고딕&quot;,sans-serif">핸드 메이드 상품은
                                                            주문 후 제작이 들어가므로, 제작 기간을 포함하여 영업일 기준 3-14일의 배송 기간이 소요 됩니다.
                                                        </span></span></span></p>

                                            <p style="margin-bottom:11px; text-align:justify"><strong><span
                                                        style="font-size:10pt"><span style="line-height:107%"><span
                                                                style="font-family:&quot;맑은 고딕&quot;,sans-serif">주문 변경 및
                                                                취소</span></span></span></strong></p>

                                            <ul>
                                                <li style="text-align:justify"><span style="font-size:10pt"><span
                                                            style="line-height:107%"><span
                                                                style="font-family:&quot;맑은 고딕&quot;,sans-serif">배송 준비
                                                                단계 및 상품 출고 후에는 주문 변경 및 취소가 불가합니다.</span></span></span>
                                                </li>
                                                <li style="text-align:justify"><span style="font-size:10pt"><span
                                                            style="line-height:107%"><span
                                                                style="font-family:&quot;맑은 고딕&quot;,sans-serif">교환 및
                                                                반품은 상품 수령일로부터 48시간 이내에 게시판 접수
                                                                후&nbsp;</span></span></span><span
                                                        style="font-size:10pt"><span style="line-height:107%"><span
                                                                style="font-family:&quot;맑은 고딕&quot;,sans-serif">상품
                                                                수령일로부터 7일 이내에 제품의 가치가 훼손 되지 않은 상태로 제품이 사무실로 도착해야 교환 및 환불
                                                                처리 가능합니다. (불량 상품은 24시간 이내)</span></span></span></li>
                                            </ul>

                                            <p style="text-align:justify"><strong><span style="font-size:10pt"><span
                                                            style="line-height:107%"><span
                                                                style="font-family:&quot;맑은 고딕&quot;,sans-serif">불량 및
                                                                오배송의 경우</span></span></span></strong></p>

                                            <ul>
                                                <li style="text-align:justify"><span style="font-size:10pt"><span
                                                            style="line-height:107%"><span
                                                                style="font-family:&quot;맑은 고딕&quot;,sans-serif">제품 하자 및
                                                                오배송의 경우, 저희가 배송비를 부담하여 같은 상품으로 교환 및 재발송 해드립니다. &nbsp;(
                                                                상품 불량 및 오배송으로 인한 반품 및 교환 시에는 배송비가 부과
                                                                됩니다.)</span></span></span></li>
                                                <li style="text-align:justify"><span style="font-size:10pt"><span
                                                            style="line-height:107%"></span></span></li>
                                            </ul>

                                            <p style="text-align:justify"><span style="font-size:12px"><strong>교환 및 환불
                                                        불가한 경우</strong></span></p>

                                            <ul>
                                                <li><span style="font-size:12px">교환 및 반품 접수 하지 않고, 임의로 상품을 보내신 경우 무통보 반송
                                                        처리 됩니다.</span></li>
                                                <li><span style="font-size:12px">오염, 향수 냄새, 악취, 라벨 제거 등 착용 흔적이
                                                        있을 경우</span>,<span style="font-size:12px">상품 훼손 및 착용 후에 발견한 하자의
                                                        경우</span></li>
                                                <li><strong><span style="font-size:12px">주문 제작 상품,세일 상품, 적립금 결제, 품절
                                                            상품</span>,<span style="font-size:12px">교환 및 환불 불가를 명시 해놓은
                                                            경우</span></strong></li>
                                                <li><span style="font-size:12px">모니터 해상도에 따른 색상 차이 및 실측 사이즈 3cm 내의 오차 및
                                                        두께 차이 경우</span></li>
                                            </ul>


                                            <p style="text-align:justify"><span
                                                    style="font-size:12px"><strong>*</strong>&nbsp;궁금한 사항은 상세하게 답변드리니,
                                                    언제든지 편하게 문의 바랍니다 항상 만족하실 수 있도록 노력하겠습니다 :)</span></p>


                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>


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