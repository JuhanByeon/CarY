<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/top" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>

.dop{
    position: fixed;
    top: 0;
    left: 0;
}
#wrap{
    width: 100%;
    margin: 0;
    padding: 0;
    overflow: hidden;
}
.new_divider{
    width: 100%;
    height: 1px;
    background: #999;
    display: block;
    margin: 10px 0 30px;
}
.tit{
    font-size: 1.2em;
}
.sub_tit{
    padding-left: 5%;
    font-size: 1em;
    margin-top: 50px;
    margin-bottom: 50px;
}

.cardetail_price, .cardetail_name{
    font-size: 1.2em;
}

.gray{
    color: #999;
    display: block;
    padding-bottom: 10px;
}

.list_box{
    float: left;
    width: 100%;
    margin-bottom: 120px;
}
.cardetail_info{
    width: 100%;
    margin-bottom: 70px;
    float: left;
}

.cardetail_option_list{
    width: 100%;
    padding: 0 5%;
    float: left;
    /* margin-bottom: 50px; */
}
.cardetail_info_list{
    width: 100%;
}
.cardetail_info_list li, .cardetail_option_list li{
    width: 25%;
    float: left;
    padding-bottom: 28px;
}
.cardetail_option_list li{
    font-size: 0.8em;
}

        #inlist li a img {
            width: 100%;
        }

        #big{
            width: 100%;
            max-height: 600px;
            overflow: hidden;
        }
        #photo{
            width: 100%;
            background:rgba(0, 0, 0, 0.8);
            position: relative;
            min-height: 300px;
        }
        .button_position{
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content:space-between;
            position: absolute;
        }
        .arrow_button{
            padding: 3% 0;
            background: rgba(0, 0, 0, 0.6);
            outline:none;
            border: none;
            width: 3%;
            color: #777;
            cursor: pointer;
            display: block;
        }
        
        #plist ul li {
            width: 12%;
            margin-top: 10px;
            margin-right: 0.57%;
            display: inline-block;
            box-sizing: border-box;
            margin-bottom: 36px;
        }

        #plist ul li:nth-last-child() {
            margin-right: 0;
        }

        .gallery{
            width: 100%;
            max-width: 1280px;
        }

        .list_center{
            float: left;
            width: 100%;	
            /* border: 1px solid black; */
            box-sizing: border-box;
            margin-top: 10px;
        }
        .list_right{
            float: right;
            width: 100%;
            /* border:1px solid black; */
            box-sizing: border-box;
            margin-top: 10px;
        }
        .tag{
            padding: 4px 6px;
            background: #ededed;
            font-size: 12px;
            border-radius: 6px;
        }
        .list_car_info li{
            float: left;
            font-size: 12px;
            padding-right: 2%;
        }



        @media all and (max-width:767px){
            .button_position{
                display: none;
            }
            .side{
                position: fixed;
                z-index: 7778;
                left: 0;
                bottom: 0;
                width: 100%;
                background: #ffffff;
                height: 80px;
                border-top: 2px solid #e66b27;
                box-sizing: border-box;
            }
            .none_mobile{
                display: none;
            }
            .mobile_btn_reservation{
                width: 100%;
                height: 80px;
                display: block;
                float: right;
                border: none;
                outline: none;
                background: #fafafa;
                cursor: pointer;
                text-align: center;
                line-height:80px;
            }
            .mobile_btn_reservation:hover{
                background: #e66b27;
                color: #fafafa;
            }
.mobile_text_box{
    width: 50%;
    height: 80px;
    float: left;
}
.mobile_text_box h5{
    width: 100%;
    height: 80px;
    text-align: center;
    display: block;
    line-height: 80px;
}
.mobile_btn_box{
    width: 50%;
    float: left;
}
        }

        @media all and (min-width:768px) {
            .mobile{
                display:none;
            }
            .none_mobile{
                width: 100%;
                border: 1px solid #999;    
                border-radius: 8px;
                overflow: hidden;
            }

            .gallery {
                width: 90%;
                max-width: 1280px;
                margin: 0 auto;
            }
            #big{
                width: 75%;
                display: block;
                margin: 0 auto;
            }

            .mainbox{
                /* border: 1px solid black; */
                float: left;
                width: calc(73% - 20px) !important;
                box-sizing: border-box;
                margin-right: 20px;
            }
            
            .sidebox{
                float: right;
                width: 25%;
                display: block;
                background:#fff;
            }
            .list_center{
                float: left;
                width: 79%;	
                /* border: 1px solid black; */
                box-sizing: border-box;
                margin-right: 1%;
                
            }
            .list_right{
                float: right;
                width: 20%;
                /* border:1px solid black; */
                box-sizing: border-box;
            }

            .none_mobile_notice{
                padding: 24px 12px;
                background: #fafafa;
                border-bottom: 1px solid #999;
            }
            .none_mobile_pay_info{
                padding: 32px 24px;
                box-sizing: border-box;
                background:#fff;
            }
            .pay_info{
                width: 100%;
                float: left;
                text-align: right;
                margin-bottom: 10px;
                background:#fff;
            }
            .small_box{
                width: 100%;
                margin-top: 24px;
                border-radius: 5px;
                background: #fafafa;
                font-size: 0.8em;
                padding: 20px 0 8px;
            }
            .small_left{
                width: 40%;
                display: inline-block;
                margin-bottom: 12px;
            }
            .small_right{
                width: 60%;
                float: right;
                text-align: right;
            }
            .seller_info_image{
                display: flex;
                width: 100%;
                justify-content: center;
                background:#fff;
            }
            .people_icon{
                display: block;
                font-size: 8vw !important;
                background:#fff;
            }
            .seller_info{
                padding: 0 12px;
                font-size: 0.8em;
                background:#fff;
            }
            .btn_reservation{
                margin: 36px 0;
                width: 80%;
                padding: 12px 0;
                border-radius: 24px;
                border: 1px solid #999;
                background: #fafafa;
                cursor: pointer;
            }
            .btn_reservation:hover{
                background: #e66b27;
            }
            button:active, button:focus{
                outline: none !important;
                /* border: none !important; */
            }
        }

        @media all and (min-width: 1132px){
            .cardetail_price, .cardetail_name{
                font-size: 26px !important;
            }
            .none_mobile_tit{
                font-size: 1.2rem;
            }
            .pay_info{
                width: 50%;

            }
            .pay_info1{
                text-align: left;
            }
            .small_box{
                font-size: 1em;
            }
        }

        
        
</style>
	




    <script type="text/javascript">
        window.onload = function () {
            var cnt = 0;
            var aList = document.getElementById('inlist').getElementsByTagName("a");

            var dop = document.querySelector('.dop');
            var bigImg = document.getElementById('big');
            var btn1 = document.getElementById('arrow_back');
            var btn2 = document.getElementById('arrow_forward');
            var ulObj = document.getElementById('inlist');

            for (var i = 0; i < aList.length; i++) {
                aList[i].onmouseenter = function (evt) {
                    evt.preventDefault();
                    var ahref = this.href;
                    bigImg.src = ahref;
                    var parent = this.parentNode;
                    var num = getIndex(parent);
                    cnt = num;
                    // dop.innerHTML = cnt;
                }

                aList[i].onclick = function (evt) {
                    evt.preventDefault();
                    var ahref = this.href;
                    bigImg.src = ahref;
                }
            }

            btn2.onclick = function () {
                cnt++;
                if (cnt == aList.length) {
                    cnt = 0;
                }
                bigImg.src = aList[cnt].href;
                // dop.innerHTML = cnt;

            }

            btn1.onclick = function () {
                cnt--;
                if (cnt < 0) {
                    cnt = aList.length;
                }
                bigImg.src = aList[cnt].href;
                // dop.innerHTML = cnt;

            }

        }

        function getIndex(ele) {
            var idx = 0;
            while ((ele = ele.previousSibling) != null) {
                idx++;
            }
            return carIndex(idx);
        }

        function carIndex(idx) {
            if (idx == 1) {
                return 0;
            } else if (idx == 3) {
                return 1;
            } else if (idx == 5) {
                return 2;
            }
        }
        
        
        
        
        $(function () {
            var loc = $('.none_mobile').offset();
            var width = $('.side').width();
            var height = $('.side').height();
            var p = $('.dop');
            $(window).scroll(function () {
                //alert(location);

                if ($(document).scrollTop() > loc.top) {
                    //alert(loc.top);
                    p.text(loc.top);
                    $('.none_mobile').css('position', 'fixed').css('z-index', '6000').css('top', '100px').css('width', width);
                } else if ($(document).scrollTop() < loc.top - 250) {
                    $('.none_mobile').css('postion', '').css('top', '').css('z-index', '');
                    p.text(loc.top);
                }
            })
        })

    </script>





 <!-- <p class="dop"></p> -->
    <div id="wrap">
        <div class="gallery clfixed">
            <div id="photo">
                <img id="big" src="images/${car.car_img1}" alt="대형사진" />

                <div class="button_position">
                    <button class="material-icons arrow_button" id="arrow_back">
                        arrow_back_ios
                    </button>

                    <button class="material-icons arrow_button" id="arrow_forward">
                        arrow_forward_ios
                    </button>
                </div>
            </div>

            <div id="plist">
                <ul id="inlist">
                    <li><a href="#">
                            <img src="${ upDir }${car.car_img1}" alt="사진1" /></a></li>
                    <li><a href="#">
                            <img src="${ upDir }${car.car_img2}" alt="사진2" /></a></li>
                    <li><a href="#">
                            <img src="${ upDir }${car.car_img3}" alt="사진3" /></a></li>
                </ul>
            </div>
        </div>


        <div class="container clfixed">
            <section class="mainbox">
                <div class="list_box clfixed">
                    <div class="list_center">
                        <span class="tag">보험이력無</span>
                        <br>
                        <br>
                        <h3><a href="#;" class="cardetail_name">${car.b_name} ${car.m_name} ${car.s_name} </a></h3>
                        <br>
                        <ul class="list_car_info clfixed">
                            <li>${car.car_age}</li>
                            <li>${car.car_km}</li>
                            <li>${car.car_fuel}</li>
                            <li>무사고</li>
                        </ul>
                        <br>
                    </div>

                    <div class="list_right">
                        <span class="tag">홈서비스</span>
                        <h2 class="cardetail_price" style="color: red;margin-top: 12px;">
                        <fmt:formatNumber value="${car.car_price/1000}" type="number" pattern="###,###"/>
                        <small style="font-size: 0.8em;">만원</small>
                        </h2>
                    </div>
                </div>



                <div class="cardetail_info">
                    <h3 class="tit">차량정보</h3>
                    <hr class="new_divider ">
                    <ul class="cardetail_info_list clfixed">
                        <li><span class="gray">차량번호</span>${car.car_num}</li>
                        <li><span class="gray">배기량</span>${car.car_cc}cc</li>
                        <li><span class="gray">연식</span>${car.car_age}년</li>
                        <li><span class="gray">색상</span>${car.car_color}</li>
                        <li><span class="gray">주행거리</span>${car.car_km}km</li>
                        <li><span class="gray">변속기</span>${car.car_gear}</li>
                        <li><span class="gray">연료</span>${car.car_fuel}</li>
                        <li><span class="gray">차종</span>${car.car_size}</li>
                        <li><span class="gray">압류/저당</span>없음</li>
                        <li><span class="gray">구동방식</span>2륜</li>
                        <li><span class="gray">인승</span>${car.car_seat}인승</li>
                        <li><span class="gray">제시번호</span>제2017020536호</li>
                    </ul>
                </div>


                <div class="cardetail_option">
                    <h3 class="tit">차량 옵션</h3>
                    <hr class="new_divider ">
                    <h4 class="sub_tit">안전</h4>
                    <ul class="cardetail_option_list clfixed">
                        	<c:forEach items="${options}" var="i">
                        	<c:if test="${i.opt_idx ge 100 and i.opt_idx lt 200}">
                        	<li>${i.opt_name}</li>
                        	</c:if>
                        	</c:forEach>
                    </ul>
                    <hr class="new_divider">

                    <h4 class="sub_tit">시트</h4>
                    <ul class="cardetail_option_list clfixed">
                        <c:forEach items="${options}" var="i">
                        	<c:if test="${i.opt_idx ge 200 and i.opt_idx lt 300}">
                        	<li>${i.opt_name}</li>
                        	</c:if>
                        	</c:forEach>
                    </ul>
                    <hr class="new_divider">

                    <h4 class="sub_tit">외관·내관</h4>
                    <ul class="cardetail_option_list clfixed">
                        <c:forEach items="${options}" var="i">
                        	<c:if test="${i.opt_idx ge 300 and i.opt_idx lt 400}">
                        	<li>${i.opt_name}</li>
                        	</c:if>
                        	</c:forEach>
                    </ul> 
                    <hr class="new_divider">


                    <h4 class="sub_tit">편의</h4>
                    <ul class="cardetail_option_list clfixed">
                        <c:forEach items="${options}" var="i">
                        	<c:if test="${i.opt_idx ge 400}">
                        	<li>${i.opt_name}</li>
                        	</c:if>
                        	</c:forEach>
                    </ul>
                    <hr class="new_divider">

                </div>

            </section>

            <aside class="side sidebox">

                <!--pc/테블릿 화면일 경우-->
                <div class="none_mobile">
                    <div class="none_mobile_notice">
                        <h3 class="none_mobile_tit">방문이 어려울땐?</h3>
                        <h3 class="none_mobile_tit" style="margin-top: 8px;"><span style="color: #e66b27;">온라인</span>
                            바로구매!</h3>
                        <small style="font-size: 0.8em;color: gray;margin-top: 12px;display: block;">3일 책임환불제, 집으로
                            배송 받는
                            홈서비스</small>
                    </div>
                    <div class="none_mobile_pay_info clfixed">
                        <h5 class="pay_info pay_info1">총 예상
                            구매 비용</h5>
                        <h5 class="pay_info">
                        <fmt:formatNumber value="${car.car_price *1.09}" type="number" pattern="###,###"/>
                       	 원</h5>
                        <h5 style="font-size: 0.8rem;text-align: center;color: gray;">※배송료는 별도입니다.
                        </h5>
                        <div class="small_box">
                            <ul>
                                <li class="small_left">차량가</li>
                                <li class="small_right">
                                <fmt:formatNumber value="${car.car_price}" type="number" pattern="###,###"/>
                                	원</li>
                                <li class="small_left">세금·부대비용</li>
                                <li class="small_right">
                                <fmt:formatNumber value="${car.car_price/10 * 90/100}" type="number" pattern="###,###"/>
                                	원</li>
                            </ul>
                        </div>
                    </div>
                    <div class="seller_info_image">
                        <span class="material-icons people_icon">
                            account_circle
                        </span>
                    </div>
                    <div class="seller_info">
                        <ul>
                            <li class="small_left">판매자</li>
                            <li class="small_right">${user.member_name}</li>
                            <li class="small_left">전화번호</li>
                            <li class="small_right">${user.member_phone}</li>
                        </ul>
                    </div>
                    <div class="seller_info_image">
                        <button class="btn_reservation">예약하기</button>
                    </div>
                </div>

                <!--모바일 화면일 경우-->
                <div class="mobile">
                    <div class="mobile_text_box">
                        <h5 style="text-align: center;">구매 비용: <span style="color:red">1729308190원</span></h5>
                    </div>
                    <div class="mobile_btn_box">
                        <div class="mobile_btn_reservation">
                            <h5>예약하기</h5>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="" id="" value="">
                
            </aside>
        </div>
    </div>
<script>
	$("#totalwon").text(parseInt($('#carPrice').text())+ parseInt($('#carTax').text()) )
</script>
<c:import url="/foot" />