<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/top" />

<style>
    .model,
    .budget {
        margin-top: 12px;
        position: relative;
        /* options-container의 위치 기준 */
    }
section.container{
	margin-top: 50px;
}


    .select-box {
        float: left;
        /* display: flex; */
        width: 17%;
        /* flex-direction: column; */
        font-size: 1rem;
        margin-left: 0.5%;
    }

    .search-btn {
        width: 10%;
        height: 55px;
        line-height: 1;
        margin-left: 0.5%;
    }

    .select-box .options-container {
        background: #2f3640;
        color: #f5f6fa;
        max-height: 0;
        width: 100%;
        opacity: 0;
        border-radius: 8px;
        overflow: hidden;
    }

    .selected,
    #country,
    .search-btn {
        background: #2f3640;
        border-radius: 8px;
        margin-bottom: 8px;
        color: #f5f6fa;
        position: relative;
        /*화살표 위치 기준점*/
        box-sizing: border-box;
    }

    .selected::after {
        content: "";
        background: url("images/arrow-down.svg");
        background-size: contain;
        background-repeat: no-repeat;
        position: absolute;
        height: 100%;
        width: 32px;
        right: 10px;
        top: 12px;
        transition: all 0.2s;
    }

    .arrow {
        background: url("images/arrow-down.svg");
        background-size: contain;
        background-repeat: no-repeat;
        z-index: 10;
        position: absolute;
        height: 100%;
        width: 32px;
        height: 55px;
        right: 10px;
        top: 12px;
        transition: all 0.2s;
    }

    .select-container {
        position: relative;
        width: 10%;
        float: left;
        margin-left: 0.5%;
    }

    .select-box .options-container.active {
        max-width: 100000%;
        max-height: 100000%;
        opacity: 1;
        position: absolute;
        top: 65px;
        left: 0;
        z-index: 100;
        box-sizing: border-box;
    }

    .select-box .options-container.active+.selected::after,
    .select-container.flip>.arrow {
        transform: rotateX(180deg);
        top: -11px;
    }

    .option {
        width: 25%;
        float: left;
        text-align: center;
        margin: 0;
        box-sizing: border-box;
    }

    .select-box .option,
    .selected {
        height: 55px;
        line-height: 55px;
        padding: 0 24px;
        cursor: pointer;
        overflow: hidden;
    }

    .select-box .option:hover {
        background: #414b57;
    }

    .select-box label {
        cursor: pointer;
    }

    .radio {
        display: none;
    }

    #country {
        float: right;
    }

    .search-box {
        float: right;
        margin-right: 0.5%;
        width: 25%;
        height: 55px;
        position: relative;
        border-bottom: 2px solid #2f3640;
    }

    #searchBox {
        padding-left: 2%;
        width: 100%;
        margin-top: 15px;
        height: 30px;
        font-size: 1rem;
        border: none;
    }

    #searchBox::placeholder {
        font-size: 80%;
    }

    .search-icon {
        position: absolute;
        z-index: 10;
        top: 10px;
        right: 2%;
    }

    .price-box {
        float: left;
        margin: 0 0.5%;
        width: 29.7%;
        height: 55px;
        position: relative;
        border-bottom: 2px solid;
        background-color: #2f3640;
        border-radius: 8px;
    }

    .price-last {
        margin-left: 0;
    }

    #minimum,
    #maximum {
        padding-left: 7%;
        width: 100%;
        margin-top: 12px;
        height: 30px;
        font-size: 1rem;
        border: none;
        background-color: #2f3640;
        box-sizing: border-box;
        color: #fff;
    }

    #minimum::placeholder,
    #maximum::placeholder {
        color: #fff;
    }



    /* board */
    .board {
        float: left;
        width: 100%;
        height: 200px;
        padding: 0 20px;
        box-sizing: border-box;
    }

    .board .btn {
        width: 100%;
        height: 50px;
        border-bottom: 1px solid #999;
    }

    .board .btn li {
        float: left;
        margin: 0 1%;
        height: 100%;
        line-height: 49px;
    }

    .board .btn li a {
        display: block;
        width: 100%;
        height: 100%;
        box-sizing: border-box;
        font-size: 18px;
        font-weight: bold;
        color: #999;
    }

    .board .btn li.on a {
        color: #333;
        border-bottom: 3px solid #e66b27;
    }

    .board .bWrap {
    	margin: 36px 0;
        box-sizing: border-box;
        width: 100%;
        height: 150px;
    }

    .bWrap>div {
        display: none;
    }

    .model,
    .budget {
        width: 100%;
        height: 150px;
    }








    ::-moz-input-placeholder,
    ::-moz-textarea-placeholder {
        color: #e66b27;
    }

    ::-webkit-input-placeholder,
    ::-webkit-textarea-placeholder {
        color: #e66b27;
    }

    button {
        float: left;
        background: inherit;
        border: none;
        box-shadow: none;
        border-radius: 0;
        padding: 0;
        cursor: pointer;
        outline: none;
        font-size: 1rem;
        font-family: 'Montserrat', DroidSans, AppleSDGothicNeo, Sans-serif,
            Helvetica;
    }

    button:hover {
        color: #e66b27;
    }

    select:focus,
    select:hover,
    input:focus {
        outline: none;
    }

    .board {
        margin-top: 12px;
    }

    select {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border: none;
        display: block;
        width: 100%;
        float: left;
        height: 55px;
        padding: 12px 24px;
        font-size: 1rem;
        font-family: 'Montserrat', DroidSans, AppleSDGothicNeo, Sans-serif,
            Helvetica;
        margin: 0;
        box-sizing: border-box;
        line-height: 1;
    }

    select::-ms-expand {
        display: none;
    }

    h2 {
        margin: 16px;
    }

    /* 슬라이더 영역 CSS */
    .slider img {
        display: block;
        width: 100%;
        max-width: 100%;
        height: auto;
    }

    /* product */
    .product-section {
        margin-top: 73px;
    }

    .product-section .product-list li {
        width: 98%;
        margin: 18px 1%;
    }

    .product-section .product-list li a {
        display: block;
        position: relative;
        width: 100%;
        height: 100%;
    }

    .product-section .product-list li a:before {
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        z-index: 10;
        width: 100%;
        height: 100%;
        background: #2f3640;
        content: "";
        opacity: 0;
        transition: all 0.2s;
    }

    .product-section .product-list li a:hover:before {
        opacity: 0.96;
    }

    .product-section .product-list li .info {
        position: absolute;
        top: 0;
        left: 23px;
        z-index: 20;
        opacity: 0;
        transition: all 0.3s;
    }

    .product-section .product-list li a:hover .info {
        transform: translateY(23px);
        opacity: 1;
    }

    .product-section .product-list li .info h3 {
        margin-bottom: 8px;
        font-size: 23px;
        color: #fff;
        font-weight: normal;
    }

    .product-section .product-list li .info span {
        font-size: 11px;
        color: #fff;
    }

    .product-section .product-list li img {
        display: block;
        width: 100%;
        max-width: 100%;
        height: auto;
    }

    .product-section .product-list li .show-info {
        width: 100%;
        height: 50px;
        padding: 5%;
    }


    /* 태블릿용 CSS */
    @media all and (min-width:768px) {

        /* banner */
        .show {
            display: none !important;
            margin-top: 50px;
        }

        /* product */
        .product-section {
            margin-top: 118px;
        }

        .product-section .product-list li {
            float: left;
            width: 48%;
        }

        .product-section .product-list li .info {
            left: 37px;
        }

        .product-section .product-list li a:hover .info {
            transform: translateY(37px);
        }

    }

    /* PC용 CSS */
    @media all and (min-width:1132px) {
        .show {
            display: block !important;
        }

        .product-section .product-list li {
            width: 23%;
        }
    }
</style>

<script>
    $(function () {
        //board
        $('.board .btn li').first().addClass('on');
        $('.bWrap > div').first().fadeIn(0);

        $('.board .btn li a').click(function () {
            $('.board .btn li').removeClass('on');
            $(this).parent().addClass('on');

            var i = $(this).parent().index();

            $('.bWrap > div').fadeOut(0);
            $('.bWrap > div').eq(i).fadeIn(0);
        });

        //company
        $('#company-name').click(function () {
            $('.options-container').removeClass('active');
            $(this).siblings('.options-container').toggleClass('active');
        });

        $('#model-name').click(function () {
            if (!document.modelF.company.value) {
                alert('제조사를 선택해주세요');
                $('.options-container').removeClass('active');
            } else {
                $('.options-container').removeClass('active');
                $(this).siblings('.options-container').toggleClass('active');
            }
        });

        $('#detail-name').click(function () {
            if (!document.modelF.model.value) {
                alert('모델을 선택해주세요');
                $('.options-container').removeClass('active');
            } else {
                $('.options-container').removeClass('active');
                $(this).siblings('.options-container').toggleClass('active');
            }
        });

        $('#minimum').click(function () {
            if (!document.budgetF.company.value) {
                alert('제조사를 선택해주세요');
            }
        });

        $('#maximum').click(function () {
            if (!document.budgetF.minimum.value) {
                alert('최저 가격을 입력해주세요');
            }
        });

        $('.model-search').click(function () {
            if (!document.modelF.company.value) {
                alert('제조사를 선택해주세요');
            } else if (!document.modelF.model.value) {
                alert('모델을 선택해주세요');
            } else if (!document.modelF.detail.value) {
                alert('세부 모델을 선택해주세요');
            } else {
                document.modelF.submit();
            }
        });

        $('.budget-search').click(function () {
            if (!document.budgetF.company.value) {
                alert('제조사를 선택해주세요');
            } else if (!document.budgetF.minimum.value) {
                alert('최저 가격을 입력해주세요');
            } else if (!document.budgetF.maximum.value) {
                alert('최고 가격을 입력해주세요');
            } else {
                document.budgetF.submit();
            }
        });

        // 부모 div클릭시 radio 체크 되게

        //company
        $(document).on('click', '.company-container .option', function(){
                $(this).siblings().children('input:radio[name="maker"]')
                    .prop('checked', false);
                $(this).children('input:radio[name="maker"]').prop(
                    'checked', true);
                $(this).parent('.options-container').removeClass('active');
                let val = $(this).children('input:radio[name="maker"]')
                    .val()
                $(this).parent().next().text(val);
            })

        //model
        $(document).on('click', '.model-container .option', function (){
                $(this).siblings().children('input:radio[name="model"]')
                    .prop('checked', false);
                $(this).children('input:radio[name="model"]').prop(
                    'checked', true);
                $(this).parent('.options-container').removeClass('active');
                let val = $(this).children('input:radio[name="model"]')
                    .val()
                $(this).parent().next().text(val);
            })

        //detail
        $(document).on('click','.detail-container .option', function () {
                $(this).siblings().children('input:radio[name="dmodel"]')
                    .prop('checked', false);
                $(this).children('input:radio[name="dmodel"]').prop(
                    'checked', true);
                $(this).parent('.options-container').removeClass('active');
                let val = $(this).children('input:radio[name="dmodel"]')
                    .val()
                $(this).parent().next().text(val);
            })

        //select
        $('#country').click(function () {
            $(this).parent().toggleClass('flip');
        });
        $("body").click(function (e) {
            if ($(".select-container").has(e.target).length == 0) {
                $(".select-container").removeClass('flip');
            }
        });

        //search-icon
        $('.search-icon').click(function () {
            if (!document.nameF.searchBox.value) {
                alert('모델명을 입력해주세요');
            } else {
                document.nameF.submit();
            }
        })

        //company2

        $('#company-name2').click(function () {
            $(this).siblings('.options-container').toggleClass('active');
        });

        $('.company-container2 .option').click(
            function () {
                $(this).siblings().children('input:radio[name="company"]')
                    .prop('checked', false);
                $(this).children('input:radio[name="company"]').prop(
                    'checked', true);
                $(this).parent('.options-container').removeClass('active');
                let val = $(this).children('input:radio[name="company"]')
                    .val()
                $(this).parent().next().text(val);
            })
         
            
     //////////////////////////////// ajax //////////////////////////////////
        $(document).on('click', '#company-name', function(){
			var con = $('#country').val();
			//alert(con);
				$.ajax({
					type:'get',
					url:'brandSearch.do?country='+con,
					dataType:'html',
					cache:false,
					success:function(res) {
						$('#company-container').html(res);
					},
					error:function(err) {
						alert('error: '+err.statys);
					}
				})
		})
		
		$(document).on('click', '#model-name', function(){
			var con = $('#company-name').text();
			//alert(con);
				$.ajax({
					type:'get',
					url:'modelSearch.do?model='+con,
					dataType:'html',
					cache:false,
					success:function(res) {
						//alert(res);
						$('#model-container').html(res);
						
					},
					error:function(err) {
						alert('error: '+err.statys);
					}
				})
		})
		
		$(document).on('click', '#detail-name', function(){
			var con = $('#model-name').text();
			//alert(con);
				$.ajax({
					type:'get',
					url:'detailModelSearch.do?dmodel='+con,
					dataType:'html',
					cache:false,
					success:function(res) {
						//alert(res);
						$('#detail-container').html(res);
					},
					error:function(err) {
						alert('error: '+err.statys);
					}
				})
		})

            
    })

</script>


<!-- slide -->
<article class="slider">
    <img src="images/main.jpg" alt="">
</article>

<!-- search -->
<section class="container">
    <div class="content">
        <div class="board">
            <div class="btn">
                <ul>
                    <li class="first"><a href="#tab01">원하는 모델이 있어요</a></li>
                    <li><a href="#tab02">예산이 정해져 있어요</a></li>
                </ul>
                <p style="text-align:right;line-height: 60px;font-size: 12px;padding-right: 1%;">전체 <Span
                        style="color: red;">${totalCount}</Span>대
                </p>
            </div>
            <div class="bWrap">
                <div class="model">
                    <form action="carList.do" name="modelF" id="modelF">

                        <!--국가-->
                        <div class="select-container">
                            <div class="arrow"></div>
                            <select name="country" id="country">
                                <option value="국산">국산</option>
                                <option value="외산">수입</option>
                            </select>
                        </div>

                        <!-- 제조사 -->
                        <div class="select-box">
                            <div class="options-container company-container" id="company-container">
                                <!-- 아약스 -->
                            </div>

                            <div class="selected" id="company-name">
                                제조사
                            </div>
                        </div>

                        <!-- 모델명 -->
                        <div class="select-box">
                            <div class="options-container model-container" id="model-container">
                                
                            </div>

                            <div class="selected" id="model-name">
                                모델
                            </div>
                        </div>

                        <!-- 세부모델 -->
                        <div class="select-box">
                            <div class="options-container detail-container" id="detail-container">
                                
                            </div>

                            <div class="selected" id="detail-name">
                                세부 모델
                            </div>
                        </div>
                        <button class="search-btn model-search">검색하기 <span></span></button>
                    </form>
                    <div class="search-box">
                        <form action="nameF" name="nameF" id="nameF">
                            <input type="text" name="searchBox" id="searchBox" placeholder="모델명을 입력해주세요 예) 아반떼">
                            <button class="search-icon" type="button"><img src="images/search-icon.svg" alt=""></button>
                        </form>
                    </div>
                </div>
                <div class="budget">
                    <form action="budgetF" name="budgetF" id="budgetF">

                        <!--국가-->
                        <div class="select-container">
                            <div class="arrow"></div>
                            <select name="country" id="country">
                                <option value="MAKE_TYPE010">국산</option>
                                <option value="MAKE_TYPE020">수입</option>
                            </select>
                        </div>

                        <!-- 제조사 -->
                        <div class="select-box">
                            <div class="options-container company-container" id="company-container2">
                                <div class="option company-option">
                                    <input type="radio" name="company" value="sdjlkfsldk" class="radio">
                                    <label>현대</label>
                                </div>

                                <div class="option">
                                    <input type="radio" name="company" class="radio" value="1">
                                    <label>제네시스</label>
                                </div>

                                <div class="option">
                                    <input type="radio" name="company" class="radio" value="2">
                                    <label>기아</label>
                                </div>

                                <div class="option">
                                    <input type="radio" name="company" class="radio" value="3">
                                    <label>쉐보레</label>
                                </div>

                                <div class="option">
                                    <input type="radio" name="company" class="radio" value="4">
                                    <label>르노삼성</label>
                                </div>

                                <div class="option">
                                    <input type="radio" name="company" class="radio" value="5">
                                    <label>쌍용</label>
                                </div>
                            </div>

                            <div class="selected" id="company-name2">
                                제조사
                            </div>
                        </div>

                        <!-- 최저가격 -->

                        <div class="price-box">
                            <input type="number" name="minimum" id="minimum" placeholder="최저가격을 입력해주세요!">
                        </div>

                        <!-- 최고가격 -->
                        <div class="price-box price-last">
                            <input type="number" name="maximum" id="maximum" placeholder="최고가격을 입력해주세요!">
                        </div>

                        <button class="search-btn budget-search" type="button">검색하기 <span></span></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>



<article class="slider">
    <div class="show">
        <img src="images/banner.png" alt="">
    </div>
</article>

<hr class="divider" style="margin-bottom:100px;">


<!-- product -->

<section class="product-section container">
    <ul class="product-list">
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>1,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>10,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>100,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>1,000,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>2,000,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>3,000,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>4,000,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
        <li>
            <a href="">
                <div class="product-img">
                    <img src="images/sample.png" alt="">
                </div>
                <div class="info">
                    <h3>아반떼</h3>
                    <span>5,000,000원</span>
                </div>
                <div class="show-info">
                    <h3>이름</h3>
                    <p>가격 설명?</p>
                </div>
            </a>
        </li>
    </ul>
</section>

<c:import url="/foot" />
