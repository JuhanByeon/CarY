<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String ctx = request.getContextPath();
%>
<!DOCTYPE HTML>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <title>Car</title>
    <style>
    
    ul.menu>li>a{
    	font-weight: bold;
    	font-size: 18px;
    }
    
        /* reset */
        @charset "utf-8";

        /* 웹폰트 CSS */
        @import url('https://fonts.googleapis.com/css?family=Montserrat|PT+Serif');

        /* CSS 초기화 */
        html,
        body,
        div,
        span,
        object,
        iframe,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        blockquote,
        pre,
        abbr,
        address,
        cite,
        code,
        del,
        dfn,
        em,
        img,
        ins,
        kbd,
        q,
        samp,
        small,
        strong,
        sub,
        sup,
        var,
        b,
        i,
        dl,
        dt,
        dd,
        ol,
        ul,
        li,
        fieldset,
        form,
        label,
        legend,
        table,
        caption,
        tbody,
        tfoot,
        thead,
        tr,
        th,
        td,
        article,
        aside,
        canvas,
        details,
        figcaption,
        figure,
        footer,
        header,
        hgroup,
        menu,
        nav,
        section,
        summary,
        time,
        mark,
        audio,
        video {
            margin: 0;
            padding: 0;
            border: 0;
            outline: 0;
            font-size: 100%;
            vertical-align: baseline;
            background: transparent;
        }

        body {
            font-family: 'Montserrat', DroidSans, AppleSDGothicNeo, Sans-serif,
                Helvetica;
            line-height: 1;
        }

        article,
        aside,
        details,
        figcaption,
        figure,
        footer,
        header,
        hgroup,
        menu,
        nav,
        section {
            display: block;
        }

        nav ul,
        li {
            list-style: none;
        }

        a {
            margin: 0;
            padding: 0;
            font-size: 100%;
            vertical-align: baseline;
            background: transparent;
            text-decoration: none;
        }

        img {
            vertical-align: top;
        }

        hr {
            display: block;
            height: 1px;
            border: 0;
            margin: 0;
            padding: 0;
        }

        input,
        textarea {
            width: 100%;
            margin: 0;
            padding: 0;
            border: 0;
            color: #222328;
            font-family: 'Montserrat';
            font-size: 12px;
            vertical-align: top;
            border-radius: 0;
            box-sizing: content-box;
            appearance: none;
        }



        form {
            width: 100%;
            display: block;
        }

        /* form search board */
        * {
            font-size: 16px;
        }


        /* common.css */
        /* 모바일용 CSS */
        /* 기본 CSS */
        .container {
            width: 90%;
            max-width: 1280px;
            margin: 0 auto;
        }

        .cfixed:after,
        .container:after {
            display: block;
            content: "";
            clear: both;
        }

        .divider {
            width: 90%;
            max-width: 1280px;
            margin: 0 auto;
            margin-top: 77px;
            background: #999;
        }

        .m-divider {
            width: 20px;
            margin: 0 auto;
            margin-top: 77px;
            background: #e66b27;
        }

        /* 헤더 영역 CSS */
        .header {
            position: relative;
            padding: 18px 5%;
        }

        .header .logo {
            float: left;
            display: block;
        }

        .header .logo a {
            font-size: 26px;
            color: #e66b27;
        }

        .header .menu,
        .gnb-icon ul {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            width: 100%;
            background: black;
        }

        .header .menu li {
            border-bottom: 1px solid #e66b27;
        }

        .header .menu li a {
            display: block;
            padding: 14px 0 14px 5%;
            font-size: 14px;
            color: #fff;
        }

        .header .menu-toggle-btn {
            float: right;
            width: 20px;
            margin-top: 4px;
            cursor: pointer;
        }

        .header .menu-toggle-btn span {
            display: block;
            width: 100%;
            height: 3px;
            background: black;
        }

        .header .menu-toggle-btn span:nth-child(2) {
            margin: 5px 0;
            width: 80%;
        }





        /* 태블릿용 CSS */
        @media all and (min-width:768px) {

            /* 기본 CSS */
            .divider {
                margin-top: 124px;
            }

            .m-divider {
                margin-top: 124px;
            }

            /* 헤더 영역 CSS */
            header {
                margin: 0 !important;
                padding: 0 !important;
                height: 80px !important;
            }

            .clear {
                width: 100%;
                height: 80px;
            }

            .fix {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                z-index: 5000;
                background: #fff;
            }

            .header .logo {
                display: block;
                float: left;
                width: 100px;
                height: 40px;
                margin-top: 20px;
            }

            .gnb {
                float: left;
            }

            .header .menu,
            .gnb-icon ul {
                position: static !important;
                width: auto;
                display: block !important;
                float: left;
                background: none;
            }

            .header .menu li {
                float: left;
                margin-left: 21px;
                border: none;
            }

            .header .menu li a {
                padding: 0;
                font-size: 16px;
                color: #222322 !important;
                line-height: 80px;
            }

            .header .menu-toggle-btn {
                display: none !important;
            }

            .gnb-icon {
                float: right;
            }

            .gnb-icon li {
                float: left;
                margin-left: 15px;
            }

            .gnb-icon li a {
                font-size: 12px;
                color: #222322;
                line-height: 80px;
            }

            .gnb-icon li:after {
                color: #222322;
                content: '｜';
                position: relative;
                left: 7px;
                top: -2px;
                font-size: 7px;
            }

            .gnb-icon .last:after {
                content: '';
            }


        }



        /* margin: 36px 1.5%;
        width: 22%;


 float:left;
    margin: 18px 1.5%;
    width: 44%;
     */
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(function () {
            //m-menu-btn
            $('.menu-toggle-btn').click(function () {
                $('.menu').stop().slideToggle('fast');
            })

        });

        $(function () {
            $('.btn_next').click(function () {
                $(this).parents('.select_carBoard').removeClass('carBoard_active');
                $(this).parents('.select_carBoard').next().addClass('carBoard_active');

                var i = $(this).parents('.select_carBoard').index();

                $('.carSellWrap_header>ul>li').removeClass('selected_header');
                $('.carSellWrap_header>ul>li').eq(i + 1).addClass('selected_header');
            });

            $('.btn_back').click(function () {
                $(this).parents('.select_carBoard').removeClass('carBoard_active');
                $(this).parents('.select_carBoard').prev().addClass('carBoard_active');

                var i = $(this).parents('.select_carBoard').index();

                $('.carSellWrap_header>ul>li').removeClass('selected_header');
                $('.carSellWrap_header>ul>li').eq(i - 1).addClass('selected_header');
            })

            // 클릭시 보이기
            $('.selected').click(function () {
                $('.selected').css('border', '1px solid #ededed');
                $(this).css('border', '1px solid #e66b27');
                $('.options-container').removeClass('active');
                $(this).siblings('.options-container').toggleClass('active');
            });

            //클릭시 option등장
            $('.option').click(function () {
                $(this).siblings().children('input').prop('checked', false);
                $(this).children('input').prop('checked', true);
                $(this).parent().removeClass('active');
                let val = $(this).children('input').val()
                $(this).parent().next().children().text(val);
                $(this).parent().next().css('border', '');
            })

        })
    </script>
</head>

<body>
    <!--header-->
    <div id="wrap">
        <div class="clear">
            <header class="header fix">
                <div class="container">
                    <h1 class="logo">
                        <a href="<%=ctx%>/index">Car</a>
                    </h1>
                    <nav class="gnb">
                        <ul class="menu">
                            <li><a href="<%=ctx%>/d_carList">국산</a></li>
                            <li><a href="<%=ctx%>/a_carList">수입</a></li>
                            <li><a href="">전기·친환경</a></li>
                            <li><a href="<%=ctx%>/user/carSell">판매</a></li>
                            <li><a href="<%=ctx%>/marketPrice">시세</a></li>
                            <li><a href="<%=ctx%>/cshome">고객센터</a></li>
                        </ul>
                    </nav>

                    <nav class="gnb-icon">
                        <ul>
                        <c:if test = "${loginUser eq null }">
                            <li><a href="<%=ctx%>/login">로그인</a></li>
                            <li><a href="<%=ctx%>/signup">회원가입</a></li>
                        </c:if>
                        <c:if test = "${loginUser ne null }">
                        	<li><a href="#">${loginUser.member_id}님 로그인중</a></li>
                        	<li><a href="<%=ctx%>/logout">로그아웃</a></li>
                        </c:if>
                            <li class="last"><a href="<%=ctx%>/user/myPage">마이페이지</a></li>
                        </ul>
                    </nav>
                    <span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
                    </span>
                </div>
            </header>
        </div>