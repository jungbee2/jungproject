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
    <link rel="stylesheet" type="text/css" href="css/orderpop.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jq.js"></script>
    <script type="text/javascript" src="js/aos.js"></script>
    <script type="text/javascript" src="js/scrolloverflow.js"></script>

    <script type="text/javascript" src="js/header.1.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/footer.js"></script>

    </head>
    <body>
    <div id="orderSt">
        <div class="tit-pop">
            <h1>주문정보</h1>
            <span class="txt"><em class="order_name">[덧셈회원님]</em>님께서 <em class="order_date">2021년 11월 08일</em>에 주문하신 내역입니다.</span>
        </div>
        <ul class="tab">
            <li style="width:100%;"><a href="javascript:order_view('detail', '20210122231201-48317360905');" class="active">주문상세내역</a></li>
                </ul>
        <div id="orderInfo">
            <h2>주문자</h2>
            <div class="table-w table-orderinfo">
                <table summary="">
                    <caption>주문자정보</caption>
                    <colgroup>
                        <col width="120">
                        <col width="*">
                        <col width="120">
                        <col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row"><div class="tb-left">주문번호</div></th>
                            <td><div class="tb-left">20210122231201-48317360905</div></td>
                            <th scope="row"><div class="tb-left">주문일자</div></th>
                            <td><div class="tb-left">2021.01.22</div></td>
                        </tr>
                        <tr>
                            <th scope="row"><div class="tb-left">주문자</div></th>
                            <td><div class="tb-left">덧셈회원임</div></td>
                            <th scope="row"><div class="tb-left">주문서 입금현황 </div></th>
                            <td><div class="tb-left">미입금</div></td>
                        </tr>
                        <tr>
                            <th scope="row"><div class="tb-left">주문 메모</div></th>
                            <td colspan="3"><div class="tb-left"></div></td>
                        </tr>
                                        </tbody>
                </table>
            </div>
                    <h2>배송지</h2>
            <div class="table-w table-region">
                <table summary="">
                    <caption>배송지정보</caption>
                    <colgroup>
                        <col width="120">
                        <col width="*">
                        <col width="120">
                        <col width="*">
                    </colgroup>
                    <tbody>
                                        <tr>
                            <th scope="row"><div class="tb-left">배송번호</div></th>
                            <td>
                                <div class="tb-left">
                                    S-21012223-243310254-00                                                            </div>
                            </td>
                            <th scope="row"><div class="tb-left">송장번호</div></th>
                            <td>
                                <div class="tb-left">
                                                                                                                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row"><div class="tb-left">수취인</div></th>
                            <td><div class="tb-left">덧셈회원임</div></td>
                            <th scope="row"><div class="tb-left">연락처</div></th>
                            <td><div class="tb-left">010-0000-0000</div></td>
                        </tr>
                        <tr>
                            <th scope="row"><div class="tb-left">주소</div></th>
                            <td colspan="3"><div class="tb-left">장안대학교랍니다</div></td>
                        </tr>
                        <tr>
                            <th scope="row"><div class="tb-left">배송메세지</div></th>
                            <td colspan="3"><div class="tb-left"></div></td>
                        </tr>
                                    </tbody>
                </table>
            </div>
                    <h2>주문상품</h2>
            <div class="table-w table-prdinfo">
                <table summary="">
                    <caption>주문상품정보</caption>
                    <colgroup>
                        <col width="60">
                        <col width="*">
                        <col width="110">
                        <col width="50">
                        <col width="80">
                        <col width="60">
                        <col width="60">
                        <col width="80">
                    </colgroup>
                    <thead>
                        <tr><th scope="row" colspan="2"><div class="tb-center">주문상품정보</div></th>
                        <th scope="row"><div class="tb-center">상품별주문번호</div></th>
                        <th scope="row"><div class="tb-center">수량</div></th>
                        <th scope="row"><div class="tb-center">가격</div></th>
                        <th scope="row"><div class="tb-center">적립</div></th>
                        <th scope="row"><div class="tb-center">처리상태</div></th>
                        <th scope="row"><div class="tb-center">배송번호</div></th>
                    </tr></thead>
                    <tfoot>
                        <tr><td colspan="8">
                            <div class="tb-right">
                                (상품구매금액)
                                                                                                                                                    (할인/추가금액)
                                                            = 0원
                            </div>
                        </td>
                    </tr></tfoot>
                    <tbody>
                                        <tr>
                            <td class="tb-thumb">
                                <div class="tb-center">
                                    <img src="" style="width:58px; height:58px">
                                </div>
                            </td>
                            <td>
                                <div class="tb-center">
                                    <a href="javascript:go_brand('030001000439');">상품명<br></a>
                                    <span class="quantity order_table_Td style4">
                                        <img src="/images/common/order1_optionicon.gif"> color : </span>
                                </div>
                            </td>
                            <td><div class="tb-center">20210122231201-48317360905_[1]</div></td>
                            <td><div class="tb-center">1</div></td>
                            <td><div class="tb-center tb-price"><strong>0원</strong></div></td>
                            <td><div class="tb-center"><span class="style4">550</span></div></td>
                            <td><div class="tb-center">입금전취소-시스템</div></td>
                            <td><div class="tb-center">S-21012223-243310254-00</div></td>
                        </tr>
                                    </tbody>
                </table>
            </div>
            <h2>결제정보</h2>
            <div class="table-w table-payinfo">
                <table summary="">
                    <caption>결제정보</caption>
                    <colgroup>
                        <col width="180">
                        <col width="250">
                        <col width="*">
                    </colgroup>
                    <thead>
                        <tr><th scope="row"><div class="tb-center">결제방법</div></th>
                        <th scope="row"><div class="tb-center">결제금액</div></th>
                        <th scope="row"><div class="tb-center">세부내역</div></th>
                    </tr></thead>
                    <tfoot>
                        <tr>
                            <td><div class="tb-center tb-nbold">무통장</div></td>
                            <td><div class="tb-center">0원 (미입금)</div></td>
                            <td><div class="tb-center tb-nbold"> 국민은행 000000-00-000000 (예금주:덧셈) <span id="bankname_banker">덧셈회원님</span> 
                                                                            </div></td>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr>
                            <td><div class="tb-center">사용한 적립금</div></td>
                            <td><div class="tb-center">원</div></td>
                            <td><div class="tb-center">&nbsp;</div></td>
                        </tr>
                        <tr>
                            <td><div class="tb-center">사용한 예치금</div></td>
                            <td><div class="tb-center">원</div></td>
                            <td><div class="tb-center">&nbsp;</div></td>
                        </tr>
                    </tbody>
                </table>
            </div>
                                    <div id="pop_order_btn_group">
                             
                            
            
            </div>
            <div class="pop_order_btn_close">
                <a href="javascript:window.close();" class="CSSbuttonWhite">닫기</a>
            </div>
        </div><!-- #orderInfo-->
    </div><!-- #orderSt -->
    <script type="text/javascript" src="/template_common/shop/basic_simple/pop_order_oo.js?t=201711221039"></script>
    
    <iframe id="loginiframe" name="loginiframe" style="display: none;" frameborder="no" scrolling="no"></iframe>
    
    <div id="basketpage" name="basketpage" style="position: absolute; visibility: hidden;"></div>
    
            <form name="tabform" method="post" action="orderpop.html">
                <input type="hidden" name="ordernum">
                <input type="hidden" name="orderhname" value="">
            </form>
    
    <form name="form1" action="orderpop.html" method="post">
    <input type="hidden" name="tempidnum">
    <input type="hidden" name="ordernum" value="20210122231201-48317360905">
    <input type="hidden" name="delivery_num">
    <input type="hidden" name="type">
    <input type="hidden" name="delivery" value="">
    <input type="hidden" name="ordernumid" value="">
    <input type="hidden" name="orderhname" value="">
    <input type="hidden" name="page" value="">
    </form>
    
    <script type="text/javascript" src="/js/neodesign/orderpop.js"></script>
    
    <script type="text/javascript">
    
    (function($) {
        $(function() {
            // 마우스 오버시 썸네일 이미지의 미리보기 이미지를 출력
            $('img.MS_preview_image').mouseenter(function() {
                var _o = $(this).offset()
                var _e = $('<div></div>').css({
                    'position': 'absolute',
                    'top': _o.top + 'px',
                    'left': (_o.left + $(this).width() + 10) + 'px',
                    'padding': '10px',
                    'border': '1px solid #000000',
                    'backgroundColor': '#ffffff'
                });
                $(_e).append('<img src="' + $(this).attr('prev_img') + '" border="0" />');
                $(this).after(_e);
            });
    
            // 마우스 아웃시 미리보기 이미지 제거
            $('img.MS_preview_image').mouseleave(function() {
                $(this).next('div:first').remove();
            });
        });
    })(jQuery);
    
    </script>
    
    <script type="text/javascript" src="/template_common/shop/basic_simple/common.js?r=1511314772"></script>
    
    
    
    </body>