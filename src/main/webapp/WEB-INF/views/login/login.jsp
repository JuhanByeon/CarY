<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ctx = request.getContextPath();
%>

<c:import url="/top" />
<!-- F5F6F7 -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .wrap-bg {
            background: #f5f6f7;
        }

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
            font-family: 'Montserrat', DroidSans, AppleSDGothicNeo, Sans-serif, Helvetica;
            line-height: 1;
            background: #f5f6f7;
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
            border-bottom: 1px solid #757575;
            color: #222328;
            font-family: 'Montserrat';
            font-size: 12px;
            vertical-align: top;
            border-radius: 0;
            box-sizing: content-box;
            appearance: none;
        }

        ::-moz-input-placeholder,
        ::-moz-textarea-placeholder {
            color: #e66b27;
        }

        ::-webkit-input-placeholder,
        ::-webkit-textarea-placeholder {
            color: #e66b27;
        }

        form {
            width: 100%;
            display: block;
        }

        input,
        select {
            width: 100%;
            height: 30px;
            border: none;
        }

        /* 공통 / 모바일 css */
        .container3 {
            width: 90%;
            height: 50px;
            margin: 0 auto;
            padding: 10px 1%;
            outline: 1px solid gray;
            box-sizing: border-box;
            background: #fff;
        }

        input:focus,
        select:focus {
            outline: 1px solid #e66b27;
        }

        .label {
            font-size: 16px;
            font-weight: 500;
            width: 90%;
            margin: 19px auto 8px;
            max-width: 480px;
        }

        .container3 {
            max-width: 480px;
        }

        .btn-container button {
            width: 100%;
            height: 50px;
            background-color: #e66b27;
            box-sizing: border-box;
            color: #fff;
            border: none;
            font-size: 18px;
        }

        .container2,
        .btn-container {
            width: 90%;
            height: 50px;
            margin: 0 auto;
            box-sizing: border-box;
            max-width: 480px;
            padding: 0;
            background: #fff;
        }

        .birth {
            width: 90%;
            max-width: 480px;
            margin: 0 auto;
            box-sizing: border-box;
            height: 50px;
        }

        .birth-div {
            float: left;
            width: 32.333%;
            outline: 1px solid gray;
            margin-right: 1.5005%;
            padding: 10px 1%;
            box-sizing: border-box;
            height: 50px;
            background: #fff;
        }

        .birth-div-last {
            float: right;
            width: 32.333%;
            outline: 1px solid gray;
            box-sizing: border-box;
            height: 50px;
            padding: 10px 1%;
            background: #fff;
        }

        .hp-m {
            margin-top: 18px;
        }

        .hp-box {
            width: 77%;
            margin-right: 2%;
            box-sizing: border-box;
            padding: 10px 1%;
            outline: 1px solid gray;
            float: left;
        }

        .hp-btn {
            width: 21%;
            float: right;
            height: 50px;
            background: #e66b27;
            border: none;
            color: #fff;
        }

        .fNav,
        footer p {
            background: #f5f6f7 !important;
            float: left;
            width: 100%;
            height: 50px;
            line-height: 50px;
            text-align: center;
            padding: 15px 0;
        }

        .fNav li {
            display: inline-block;
            padding-right: 10px;
        }

        a {
            color: #555 !important;
            text-decoration: none;
        }

        .fNav li:after {
            content: '|';
            position: relative;
            left: 7px;
            top: -2px;
        }

        .fNav .last {
            padding-right: 0;
        }

        .fNav .last:after {
            content: '';
        }

        /* 태블릿용 CSS */
        @media all and (min-width:768px) {}



        /* PC용 CSS */
        @media all and (min-width:1132px) {}
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script type="text/javascript">

        function check() {

            if (!f.userid.value) {
                alert('아이디를 입력하세요');
                f.userid.focus();
                return;
            }
            if (!f.pwd.value) {
                alert('비밀번호를 입력하세요');
                f.pwd.focus();
                return;
            }

            f.submit();

        }
        //max-length check



        function maxLengthCheck(object) {
            if (object.value.length > object.maxLength) {
                object.value = object.value.slice(0, object.maxLength);
            }
        }

    </script>
</head>

<body>
    <div class="wrap-bg">
        <div class="container2" style="background: #f5f6f7 !important;">
            <h1><a href="<%=ctx%>/index.do">LOGO 위치</a></h1>
        </div>
        <form name="f" action="loginEnd" method="post">


            <div class="label m-3">
                <div class="col-md-3 offset-md-4">아이디</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="text" name="userid" id="userid" placeholder="User ID" class="form-control">
                    <!-- hidden data ---------------------- -->
                    <input type="hidden" name="flag" value="false">
                    <!-- ---------------------------------- -->

                </div>
            </div>


            <div class="label m-3">
                <div class="col-md-3 offset-md-4">비밀번호</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="password" name="pwd" id="pwd" placeholder="Password" class="form-control">
                </div>
            </div>




            <div class="label"></div>
            <div class="btn-container m-3">
                <div class="col-md-12 text-center">
                    <button type="button" class="join-btn" onclick="check()">로그인</button>
                </div>
            </div>
        </form>

        <div class="container2">
            <nav class="fNav">
                <ul>
                    <li><a href="#">아이디 찾기</a></li>
                    <li><a href="#">비밀번호 찾기</a></li>
                    <li class="last"><a href="<%=ctx%>/signup.do">회원가입</a></li>
                </ul>
            </nav>
        </div>
    </div>
</body>

</html>