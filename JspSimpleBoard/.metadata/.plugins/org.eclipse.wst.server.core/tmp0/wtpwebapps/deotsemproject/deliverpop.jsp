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

</head>

<body>
    <style>
        div#container_box ul li {
            border: 5px solid #eee;
            padding: 10px 20px;
            margin-bottom: 20px;
        }

        div#container_box .orderList span {
            font-size: 20px;
            font-weight: bold;
            display: inline-block;
            width: 90px;
            margin-right: 10px;
        }

        .orderInfo {
            border: 5px solid #eee;
            padding: 10px 20px;
            margin: 20px 0;
        }

        .orderInfo span {
            font-size: 20px;
            font-weight: bold;
            display: inline-block;
            width: 90px;
        }

        .orderView li {
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #999;
        }

        .orderView li::after {
            content: "";
            display: block;
            clear: both;
        }

        .thumb {
            float: left;
            width: 200px;
        }

        .thumb img {
            width: 200px;
            height: 200px;
        }

        .gdsInfo {
            float: right;
            width: calc(100% - 220px);
            line-height: 2;
        }

        .gdsInfo span {
            font-size: 20px;
            font-weight: bold;
            display: inline-block;
            width: 100px;
            margin-right: 10px;
        }
    </style>

    <div class="orderInfo">
        <c:forEach items="${orderView}" var="orderView" varStatus="status">

            <c:if test="${status.first}">
                <p><span>주문자</span> 덧셈회원</p>
                <p><span>수령인</span> 덧셈회원</p>
                <p><span>주소</span> 주소적으면 됨</p>
                <p><span>가격</span>
                    <fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원
                </p>
            </c:if>

        </c:forEach>
    </div>

    <ul class="orderView">
        <c:forEach items="${orderView}" var="orderView">
            <li>
                <div class="thumb">
                    <img src="${orderView.gdsThumbImg}" />
                </div>
                <div class="gdsInfo">
                    <p>
                        <span>상품명</span>${orderView.gdsName}<br />
                        <span>개당 가격</span>
                        <fmt:formatNumber pattern="###,###,###" value="" /> 원<br />
                        <span>구입 수량</span>${orderView.cartStock} 개<br />
                        <span>최종 가격</span>
                        <fmt:formatNumber pattern="###,###,###" value="" /> 원
                    </p>
                </div>
            </li>
        </c:forEach>
    </ul>

</body>

</html>