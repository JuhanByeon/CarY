<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	String ctx = request.getContextPath();
%>
<c:import url="/top" />
<style>
        * {
            box-sizing: border-box;
        }

        .board {
            float: left;
            width: 100%;
        }

        .board .btn {
            width: 100%;
            height: 50px;
            border-bottom: 1px solid #999;
        }

        .board .btn li {
            float: left;
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
            padding: 0 20px;
        }

        .board .btn li.on a {
            color: #333;
            border-bottom: 3px solid #e66b27;
        }

        .board .btn .first {
            margin-left: 0;
        }

        .board .bWrap {
            width: 100%;
        }

        .bWrap>div {
            display: none;
        }

        .carbuy,
        .carsell {
            width: 100%;
        }

        .list_box {
            margin-top: 20px;
            padding: 14px;
            border: 1px solid #999;
            overflow: hidden;
            position: relative;
            width: 100%;
        }

        .list_box_more {
            margin-top: 20px;
            padding: 8px 14px;
            border-bottom: 1px solid #999;
        }

        .carbuy li,
        .carsell li {
            padding: 10px 0;
            font-size: 12px;
        }

        .img_box {
            width: 30%;
            float: left;
            margin-left: 18px;
            margin-right: 20px;
            height: 100%;
        }

        .img_box img {
            width: 100%;
        }

        .list_content {
            text-align: right;
        }

        .list_content>h3>a {
            width: 100%;
        }

        .list_car_info li {
            display: inline-block;
        }

        .tag {
            padding: 4px 6px;
            background: #ededed;
            font-size: 12px;
            border-radius: 6px;
        }

        .checkbox {
            width: 10px;
            height: 100%;
            width: 10px;
            position: absolute;
            left: 12px;
            top: 0;
        }

        .input_checkbox {
            height: 100%;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .mypage_tit {
            width: 100%;
            background: #999;
            color: #ededed;
            margin: 30px 0;
        }

        .h1_tit {
            float: left;
            font-size: 24px;
            padding: 14px;
        }

        .edit_link {
            float: right;
            font-size: 12px;
            padding-top: 24px;
            padding-right: 14px;
            color: #ededed;
        }

        @media (min-width: 768px) {
            * {
                font-size: 1.5em;
            }
        }

        @media(min-width: 1132px) {

            .carbuy li,
            .carsell li {
                font-size: 16px;
            }

            .carbuy h3 a,
            .carsell h3 a {
                font-size: 20px;
            }

            .carbuy h2,
            .carsell h2 {
                font-size: 22px;
            }
        }
    </style>

    <div id="wrap">
        <section class="container">

            <div class="mypage_tit cfixed">
                <h1 class="h1_tit">마이페이지</h1>
                <a href="<%=ctx%>/myPageEdit" class="edit_link">개인정보 수정 <span style="letter-spacing: -5px;">＞＞＞</span></a>
            </div>
            <div class=" board">
                <div class="btn">
                    <ul>
                        <li class="first"><a href="#tab01">내차사기</a></li>
                        <li><a href="#tab02">내차팔기</a></li>
                    </ul>
                </div>
                <div class="bWrap">
                    <div class="carbuy">
                        <div class="list_box_more">
                            <h3>· 찜한 차량</h3>
                        </div>
                        <div class="list_box cfixed">
                            <div class="checkbox">
                                <div class="input_checkbox">
                                    <input type="checkbox" name="" id="">
                                </div>
                            </div>
                            <div class="img_box">
                                <img src="<%=ctx%>/images/car1.JPG" alt="카이미지">
                            </div>

                            <div class="list_content">
                                <span class="tag">보험이력無</span>
                                <br>
                                <br>
                                <h3><a href="#;">쉐보레(GM대우) 올 뉴 말리부 1.5터보 LS디럭스</a></h3>
                                <ul class="list_car_info">
                                    <li>17년 03월식</li>
                                    <li>116,274km</li>
                                    <li>가솔린</li>
                                    <li>경기서부</li>
                                    <li>무사고</li>
                                </ul>
                                <span class="tag">홈서비스</span>
                                <h2 style="color: red;margin-top: 12px;">1,150<small
                                        style="font-size: 0.8em;">만원</small>
                                </h2>
                            </div>
                        </div>
                    </div>
                    <div class="carsell">
                        <div class="list_box_more">
                            <h3>· 판매 중인 내 차량</h3>
                        </div>
               <!-- 반복문 시작 ----------------------------------------------------------------- -->
               			<c:if test="${cinfo eq null or empty cinfo}">
							<tr>
								<td colspan="3"><b>데이터가 없습니다.</b>
							</tr>
						</c:if>
						<c:if test="${cinfo ne null and not empty cinfo}">
						<c:forEach var="list" items="${cinfo}">
                        <div class="list_box cfixed">
                            <div class="checkbox">
                                <div class="input_checkbox">
                                    <input type="checkbox" name="" id="">
                                </div>
                            </div>
                            
                            <div class="img_box">
                                <img src="/Upload/${list.car_img1}" alt="카이미지">
                            </div>

                            <div class="list_content">
                                <span class="tag">보험이력無</span>
                                <br>
                                <br>
                                <h3><a href="#;">${list.b_name}  ${list.s_name}</a></h3>
                                <ul class="list_car_info">
                                    <li>${list.car_age}</li>
                                    <li>  <fmt:formatNumber value="${list.car_km}" pattern="###,###" />km</li>
                                    <li>  ${list.car_fuel}</li>
                                    <c:if test="${list.car_test ne null}"> <li>  성능점검기록부 有</li> </c:if>
                                </ul>
                                
                                <h2 style="color: red;margin-top: 12px;"><fmt:formatNumber value="${list.car_price/10000}" pattern="#,###" /><small style="font-size: 0.8em;">만원</small></h2>
                                <button>삭제하기</button>
                            </div>
                        </div>
                        </c:forEach>
                        </c:if>
             <!-- 반복문 시작 ----------------------------------------------------------------- -->
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script>
    
    	// 넘버 포맷
	    


        //board
        $(document).ready(function () {
            $('.board .btn li').first().addClass('on');
            $('.bWrap > div').first().fadeIn(0);

            $('.board .btn li a').click(function () {
                $('.board .btn li').removeClass('on');
                $(this).parent().addClass('on');

                var i = $(this).parent().index();

                $('.bWrap > div').fadeOut(0);
                $('.bWrap > div').eq(i).fadeIn(0);
            });
        });
    </script>

<c:import url="/foot" />