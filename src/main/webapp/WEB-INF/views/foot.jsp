<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
    /* footer */
    footer {
        width: 100%;
        background-color: #2f3640;
        margin-top: 100px;
    }

    .fNav {
        float: left;
        width: 100%;
        padding-top: 30px;
        height: 50px;
        line-height: 50px;
        text-align: center;
    }

    .fNav li {
        display: inline-block;
        padding-right: 10px;
    }

    .fNav li:after {
        color: rgb(204, 204, 204);
        content: '｜';
        position: relative;
        left: 7px;
        top: -2px;
    }

    .fNav .last:after {
        content: "";
    }

    .fNav li a {
        color: #fff;
    }

    p.location,
    p.copyright {
        color: rgb(177, 177, 177);
        text-align: center;
        width: 100%;
        padding-bottom: 50px;
        line-height: 30px;
    }

    @media all and (max-width:767px) {

        .fNav li a,
        p.location,
        p.copyright {
            font-size: 11px !important;
        }
    }

    /* 태블릿용 CSS */
    @media all and (min-width:768px) {

        /* footer */
        .fNav li a,
        p.location,
        p.copyright {
            font-size: 14px;
        }
    }
</style>


<!--footer-->
<footer>
    <div class="container">
        <nav class="fNav">
            <ul>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">저작권정책</a></li>
                <li class="last"><a href="#">RSS</a></li>
            </ul>
        </nav>
        <p class="location">
            서울시 영등포구 선유로 130 에이스 하이테크시티 3차 2층 카와이(주) 대표이사 한주변 법인명(상호명) 카와이(주) 통신판매업신고 제 2020-서울강서-0000 호
            <br />사업자등록번호 717-77-00000 개인정보 관리책임자 김환세 카와이(주) 대표번호 : 1577-0000 cary@carwhy.com
            <br />본 사이트는 포트폴리오 입니다.
        </p>
        <p class="copyright">Copyright &copy; CARWHY. All rights reserved.</p>
    </div>
</footer>
</div>

</body>

</html>