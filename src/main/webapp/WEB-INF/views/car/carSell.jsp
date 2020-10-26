<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/top" />

<style>
	.option {
		position: relative;
	}
	
	.circle_2 {
		position: absolute;
		top: 12px;
		left: 4px;
		 width: 13px;
      height: 13px;
      display:inline-block;
      border: 1px solid #999;
      border-radius:50%;
	}
	
    section:before {
        content: '';
        display: block;
        width: 100%;
        height: 1px;
        background: #ededed;
        margin-bottom: 1%;
    }


    .bWrap_header {
        width: 100%;
    }

    .bWrap_header>ul {

        width: 100%;
        height: 100%;
    }

    .bWrap_header>ul>li {
        width: 20%;
        float: left;
        text-align: center;
        padding: 2%;
        box-sizing: border-box;
        font-weight: bold;
        border-bottom: 1px solid rgb(168, 168, 168);
        margin-bottom: 50px;
    }

    .bWrap_header>ul>li.selected_header {
        border-bottom: 3px solid #e66b27;
        color: #e66b27;
        font-weight: bold;
        padding-bottom: calc(2% - 2px);
    }

    .board>form>div {
        display: none;
    }

    .board_active {
        display: contents !important;
    }


    /* car info */
    .board_tit {
        margin-bottom: 8px;
        font-size: 18px;
        font-weight: bold;
    }

    input:active,
    input:focus,
    textarea:active,
    textarea:focus {
        outline: none !important;
        border: 1px solid #e66b27 !important;
    }

    input {
        box-sizing: border-box;
        padding: 12px 48px;
        border: 1px solid #ededed;
        margin-bottom: 8px;
        text-align: right;
        font-size: 16px;
        height: 40px;
    }

    textarea {
        box-sizing: border-box;
        padding: 12px 36px;
        border: 1px solid #ededed;
        margin-bottom: 8px;
        font-size: 16px;
    }

    input[type="number"]::-webkit-outer-spin-button,
    input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    input::placeholder {
        color: #999;
        text-align: right;
        font-size: 14px;
    }

    .input_box {
        position: relative;
    }

    .input_tit {
        position: absolute;
        top: 12px;
        left: 24px;
        font-size: 16px;
    }

    .select-box {
        display: flex;
        width: 100%;
        flex-direction: column;
    }

    .select-box .options-container {
        border: 1px solid #e66b27;
        max-height: 0;
        width: 100%;
        opacity: 0;
        transition: all 0.4s;
        overflow: hidden;

        order: 1;
    }

    .selected {
        border: 1px solid #ededed;
        margin-bottom: 8px;
        position: relative;

        order: 0;
    }

    .selected::after {
        content: "";
        background: url("images/arrow-down2.svg");
        background-size: contain;
        background-repeat: no-repeat;

        position: absolute;
        height: 100%;
        width: 32px;
        right: 10px;
        top: 5px;
        transition: all 0.4s;
    }

    .select-box .options-container.active {
        max-height: 240px;
        opacity: 1;
        overflow-y: scroll;
    }

    .select-box .options-container.active+.selected::after {
        transform: rotateX(180deg);
        top: -6px;
    }

    .select-box .options-container::-webkit-scrollbar {
        width: 8px;
        background: #dadada;
    }

    .select-box .options-container::-webkit-scrollbar-thumb {
        background: #999;
        border-radius: 3px;
    }

    .select-box .option,
    .selected {
        padding: 12px 24px;
        cursor: pointer;
    }

    .select-box .option:hover {
        background: #ededed;
    }

    .select-box label {
        cursor: pointer;
    }

    .select-box .option .radio {
        display: none;
    }

    .btn_next,
    .btn_back,
    .btn {
        float: left;
        width: 49.5%;
        padding: 12px;
        font-size: 16px;
        box-sizing: border-box;
        margin-top: 24px;
    }

    .btn_first {
        margin-left: 25.25%;
    }

    button:active,
    button:focus {
        border: none;
        outline: none;
    }

    .btn_next,
    .btn {
        border: none;
        background: #e66b27;
        border: 1px solid #e66b27;
        color: #fff;
    }

    .btn_back {
        border: 1px solid #e66b27;
        background: none;
        color: #e66b27;
        margin-right: 1%;
    }

    /* option */
    .option_checkBox {
        width: 100%;
        position: relative;
        padding: 12px 24px;
        box-sizing: border-box;
        float: left;
    }

    input[type="checkbox"] {
        border: none;
        margin: 0;
        appearance: checkbox;
        width: 16px;
        height: 16px;
    }

    .option_label {
        position: absolute;
        top: 12px;
        font-size: 16px;
        left: 52px;
    }

    .option_wrap {
        border: 1px solid #ededed;
        padding: 12px 24px;
        box-sizing: border-box;
    }

    .small {
        font-size: 0.8em;
    }

    .ddd {
        background: #ededed;
        margin: 8px 0;
        width: 100%;
    }

    .hot {
        background: #e66b27;
        color: #fff;
        border-radius: 4px;
        padding: 0 2px;
    }

    .payprice {
        float: right;
    }

    input[type="file"] {
        box-sizing: border-box;
        width: 100%;
        padding: 8px 0;
        border: 1px solid #ededed;
        margin-bottom: 8px;
        text-align: right;
        font-size: 16px;
        height: 40px;
    }

    input[type="file"]::-webkit-file-upload-button {
        height: 1px;
        padding: 0;
        margin: -1px -200px;
        overflow: hidden;
        clip: rect(0, 0, 0, 0);
        border: 0;
        width: 200px;
        box-sizing: border-box;
    }

    .selected_one {
        float: right;
        padding-right: 24px;
        text-align: right;
    }

    input[name="price"]::placeholder {
        text-align: left !important;
    }

    @media all and (min-width:768px) {
        .option_checkBox {
            width: 50%;
        }

        .btn_group {
            max-width: 768px;
            margin: 0 auto;
        }

    }

    @media all and (min-width:1132px) {
        .option_checkBox {
            width: 25%;
        }
    }
</style>

<script>

// 제조국 - 브랜드 - 모델 - 세부모델 처리 코드

	$(function(){
		$('#detail-container .option').on('click', function(){
			var con = $(this).children('input').val()
			//alert(con);
				$.ajax({
					type:'get',
					url:'../brandList?country='+con,
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
		
		$(document).on('click', '#company-container .option', function(){
			var model = $(this).children('input').val()
				$.ajax({
					type:'get',
					url:'../modelList?brand='+model,
					dataType:'html',
					cache:false,
					success:function(res) {
						$('#model-container').html(res);
						
					},
					error:function(err) {
						alert('error: '+err.status);
					}
				})
		})
		
		$(document).on('click', '#model-container .option', function(){
			var dmodel = $(this).children('input').val()
				$.ajax({
					type:'get',
					url:'../sModelList?carmodel='+dmodel,
					dataType:'html',
					cache:false,
					success:function(res) {
						$('.select-box #detail-container').html(res);
					
					},
					error:function(err) {
						alert('error: '+err.status);
					}
				})
	
		})
	})
	
// 판매페이지 입력값 정규식 메타 검사
	
	// 차량번호 정규식 메타 (조건: 00가0000 , 000가0000)
	function isCarNum(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^[0-9]{2,3}[가-힣]{1}[0-9]{4}$/);
		var b = pattern.test(val); 
		return b;
	}

	// 차량 년식 정규식 메타 (조건: 0000.00)
	function isDate(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^[0-9]{4}[.][0-9]{1,2}$/);
		var b = pattern.test(val);
		return b;
	}
	
	// 차량 배기량 정규식 메타 (조건: 0000)
	function isCc(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^[0-9]{4}$/);
		var b = pattern.test(val);
		return b;
	}

	// 차량 주행거리 정규식 메타 (조건 : 000000)
	function isKm(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^[0-9]{1,6}$/);
		var b = pattern.test(val);
		return b;
	}
	
</script>

<section>
    <div class="bWrap container">
        <div class="bWrap_header cfixed">
            <ul>
                <li id="header_car_info" class="selected_header">차량정보</li>
                <li id="header_car_option">옵션</li>
                <li id="header_car_explain">설명글</li>
                <li id="header_car_picture">사진</li>
                <li id="header_car_payment">결제</li>
            </ul>
        </div>
        <div class="board">
            <form action="carSellEnd" name="carF" method="post" enctype="multipart/form-data">



                <!-- 차량정보 -->

                <div class="car_info board_active select_board">
                    <h1 class="board_tit">차량정보를 선택하세요</h1>

                    <div class="input_box">
                        <p class="input_tit">차량번호</p>
                        <input type="text" name="car_num" id="carNum" maxlength="8" minlength="7" placeholder="예) 000가0000">
                        <div style="float:left;"><label id="carN"></label></div>
                    </div>
                    
                      <!-- 차종 -->
                        <div class="select-box">
                            <div class="options-container">
                           		<div class="option">
                                    <input type="radio" name="car_size" class="radio" value="경차">
                                    <label>경차</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="소형차">
                                    <label>소형차</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="준중형차">
                                    <label>준중형차</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="중형차">
                                    <label>중형차</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="대형차">
                                    <label>대형차</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="스포츠카">
                                    <label>스포츠카</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="SUV">
                                    <label>SUV</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="RV">
                                    <label>RV</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="경승합차">
                                    <label>경승합차</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="승합차">
                                    <label>승합차</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="트럭">
                                    <label>트럭</label>
                                </div>
                                <div class="option">
                                    <input type="radio" name="car_size" class="radio" value="버스">
                                    <label>버스</label>
                                </div>
                            </div>
							
                            <div class="selected" >
                                차종
                                <span class="selected_one" id="carS" ></span>
                            </div>
                            <label id="carSl"></label>
                        </div>


                    <!-- 제조국 -->
                    <div class="select-box">
                        <div class="options-container" id="detail-container">
                            <div class="option detail-option">
                                <input type="radio" name="country" class="radio" value="국산" checked>
                                <label>국산</label>
                            </div>

                            <div class="option">
                                <input type="radio" name="country" class="radio" value="수입">
                                <label>수입</label>
                            </div>
                        </div>

                        <div class="selected" id="detail-name">
                            제조국
                            <span class="selected_one" id="countryR"></span>
                        </div>
                        <label id="countryRl"></label>
                    </div>


                    <!-- 제조사 -->
                    <div class="select-box">
                        <div class="options-container company-container" id="company-container">
      

                        </div>

                        <div class="selected" id="company-name">
                            제조사
                            <span class="selected_one" id="companyR"></span>
                        </div>
                        <label id="companyRl"></label>
                    </div>

                    <!-- 모델명 -->
                    <div class="select-box">
                        <div class="options-container model-container" id="model-container">                 

                        </div>

                        <div class="selected" id="model-name">
                            모델
                            <span class="selected_one" id="modelR"></span>
                        </div>
                        <label id="modelRl"></label>
                    </div>

                    <!-- 세부모델 -->
                    <div class="select-box">
                        <div class="options-container detail-container" id="detail-container">
                              
                        </div>

                        <div class="selected" id="detail-name2">
                            세부 모델
                            <span class="selected_one" id="smodelR"></span>
                        </div>
                        <label id="smodelRl"></label>
                    </div>

                    <!-- 연료 -->
                    <div class="select-box">
                        <div class="options-container">
                            <div class="option">
                                <input type="radio" name="car_fuel" class="radio" value="휘발유">
                                <label>휘발유</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_fuel" class="radio" value="디젤">
                                <label>디젤</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_fuel" class="radio" value="LPG">
                                <label>LPG</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_fuel" class="radio" value="가솔린+LPG">
                                <label>가솔린+LPG</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_fuel" class="radio" value="가솔린+전기">
                                <label>가솔린+전기</label>
                            </div>

                        </div>

                        <div class="selected">
                            연료
                            <span class="selected_one" id="fuelR"></span>
                        </div>
                        <label id="fuelRl"></label>
                    </div>

                    <div class="input_box">
                        <p class="input_tit">연식(최초등록일)</p>
                        <input type="text" name="car_age" id="date" placeholder="예) 2020.03">
                        <label class="text-right" id="carD"></label>
                    </div>

                    <div class="input_box">
                        <p class="input_tit">배기량</p>
                        <input type="number" name="car_cc" id="cc" placeholder="예) 800cc">
                        <label class="text-right" id="carC"></label>
                    </div>
                    
                    <!-- 인승 -->
                    <div class="select-box">
                        <div class="options-container">
                            <div class="option">
                                <input type="radio" name="car_seat" class="radio" value="4인승">
                                <label>4인승</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_seat" class="radio" value="5인승">
                                <label>5인승</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_seat" class="radio" value="7인승">
                                <label>7인승</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_seat" class="radio" value="11인승">
                                <label>11인승</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_seat" class="radio" value="15인승">
                                <label>15인승</label>
                            </div>
                        </div>

                        <div class="selected">
                         	인승
                            <span class="selected_one" id="seaterR"></span>
                        </div>
                        <label id="seaterRl"></label>
                    </div>

                    <!-- 변속기 -->
                    <div class="select-box">
                        <div class="options-container">
                            <div class="option">
                                <input type="radio" name="car_gear" class="radio" value="오토">
                                <label>오토</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_gear" class="radio" value="수동">
                                <label>수동</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_gear" class="radio" value="세미오토">
                                <label>세미오토</label>
                            </div>
                            <div class="option">
                                <input type="radio" name="car_gear" class="radio" value="CVT">
                                <label>CVT</label>
                            </div>
                        </div>

                        <div class="selected">
                           	 변속기
                            <span class="selected_one" id="gearR"></span>
                        </div>
                        <label id="gearRl"></label>
                    </div>

                    <!-- 색상 -->
                    <div class="select-box">
                        <div class="options-container">
                        	<div class="option">
                                <input type="radio" name="car_color" class="radio" value="흰색">
                                <label>흰색</label>
                                <div class="circle_2" style="background: #fff;">       
                      		    </div>
                            </div>
                        
                        	<div class="option">
                                <input type="radio" name="car_color" class="radio" value="진주색">
                                <label>진주색</label>
                                <div class="circle_2" style="background:ivory">       
                      		    </div>
                            </div>
                                        
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="검정색">
                                <label>검정색</label>
                                <div class="circle_2" style="background:black">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="검정투톤">
                                <label>검정투톤</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, rgba(17,17,17,1) 0%, rgba(17,17,17,1) 49%, rgba(119,119,119,1) 50%, rgba(119,119,119,1) 100%);">       
                      		    </div>
                            </div>
                    
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="쥐색">
                                <label>쥐색</label>
                                <div class="circle_2" style="background:gray">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="은색">
                                <label>은색</label>
                                <div class="circle_2" style="background:silver">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="은색투톤">
                                <label>은색투톤</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, rgba(194,194,194,1) 0%, rgba(194,194,194,1) 49%, rgba(119,119,119,1) 50%, rgba(119,119,119,1) 100%);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="흰색투톤">
                                <label>흰색투톤</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, rgba(194,194,194,1) 0%, rgba(194,194,194,1) 49%, rgba(255,255,255,1) 50%, rgba(255,255,255,1) 100%);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="은회색">
                                <label>은회색</label>
                                <div class="circle_2" style="background:rgb(189,184,178)">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="은하색">
                                <label>은하색</label>
                                <div class="circle_2" style="background:#A6B2B0;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="명옥색">
                                <label>명옥색</label>
                                <div class="circle_2" style="background:#D0D9E7;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="빨간색">
                                <label>빨간색</label>
                                <div class="circle_2" style="background:red;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="주황색">
                                <label>주황색</label>
                                <div class="circle_2" style="background:orange;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="자주색">
                                <label>자주색</label>
                                <div class="circle_2" style="background:#7D265B;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="보라색">
                                <label>보라색</label>
                                <div class="circle_2" style="background:purple;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="분홍색">
                                <label>분홍색</label>
                                <div class="circle_2" style="background:pink;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="노란색">
                                <label>노란색</label>
                                <div class="circle_2" style="background:yellow;">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="갈대색">
                                <label>갈대색</label>
                                <div class="circle_2" style="background:rgb(128,129,116);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="연금색">
                                <label>연금색</label>
                                <div class="circle_2" style="background: rgb(142,133,116);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="갈색">
                                <label>갈색</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, rgb(104,90,54) 0%, rgb(104,90,54) 49%, rgb(70,71,65) 50%, rgb(70,71,65) 100%);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="갈색투톤">
                                <label>갈색투톤</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, rgb(104,90,54) 0%, rgb(104,90,54) 49%, rgb(70,71,65) 50%, rgb(70,71,65) 100%);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="금색">
                                <label>금색</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, rgb(130,116,56) 0%, rgb(130,116,56) 49%, rgb(70,71,65) 50%, rgb(70,71,65) 100%);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="금색투톤">
                                <label>금색투톤</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, rgb(130,116,56) 0%, rgb(130,116,56) 49%, rgb(70,71,65) 50%, rgb(70,71,65) 100%);">                    
                      		    </div>
                            </div>
                            
                             <div class="option">
                                <input type="radio" name="car_color" class="radio" value="청색">
                                <label>청색</label>
                                <div class="circle_2" style="background: rgb(18,66,127);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="하늘색">
                                <label>하늘색</label>
                                <div class="circle_2" style="background: rgb(117,145,156);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="담녹색">
                                <label>담녹색</label>
                                <div class="circle_2" style="background: rgb(30,68,75);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="녹색">
                                <label>녹색</label>
                                <div class="circle_2" style="background: rgb(46,205,0);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="연두색">
                                <label>연두색</label>
                                <div class="circle_2" style="background: rgb(154,185,92);">       
                      		    </div>
                            </div>
                            
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="청옥색">
                                <label>청옥색</label>
                                <div class="circle_2" style="background: rgb(31,125,124);">       
                      		    </div>
                            </div>
                           
                            <div class="option">
                                <input type="radio" name="car_color" class="radio" value="기타">
                                <label>기타</label>
                                <div class="circle_2" style="background: linear-gradient(90deg, red 14%, orange 28%, yellow 42%, green 56%, blue 70%, navy 84%,  purple 100%);">       
                      		    </div>
                            </div>
                        </div>

                        <div class="selected">
                           	 색상
                            <span class="selected_one" id="colorR"></span>
                        </div>
                        <label id="colorRl"></label>
                    </div>

                    <div class="input_box">
                        <p class="input_tit">주행거리</p>
                        <input type="number" name="car_km" id="km" placeholder="예) 100km">
                        <label id="carK"></label>
                    </div>

                    <div class="btn_group">
                        <button type="button" id="car_info_btn" class="btn_next btn_first" >다음(옵션선택)</button>
                    </div>
                </div>


                <!-- 옵션 -->
                <div class="car_option select_board">
                    <h1 class="board_tit">옵션을 선택하세요</h1>

                    <div class="option_wrap cfixed" style="padding: 1%;">
                    
                    	<div style="font-size: 2em; margin: 2%;">외관/내장</div>
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="301" id="option1">
                            <label for="option1" class="option_label">선루프</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="302" id="option2">
                            <label for="option2" class="option_label">헤드램프(LED)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="303" id="option3">
                            <label for="option3" class="option_label">파워전동트렁크</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="304" id="option4">
                            <label for="option4" class="option_label">고스트 도어 클로징</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="305" id="option5">
                            <label for="option5" class="option_label">전동접이 사이드 미러</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="306" id="option6">
                            <label for="option6" class="option_label">알루미늄 휠</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="307" id="option7">
                            <label for="option7" class="option_label">루프랙</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="308" id="option8">
                            <label for="option8" class="option_label">열선 스티어링 휠</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="309" id="option9">
                            <label for="option9" class="option_label">전동 조절 스티어링 휠</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="310" id="option10">
                            <label for="option10" class="option_label">패들 시프트</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="311" id="option11">
                            <label for="option11" class="option_label">스티어링 휠 리모컨</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="312" id="option12">
                            <label for="option12" class="option_label">ECM 룸미러</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="313" id="option13">
                            <label for="option13" class="option_label">하이패스</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="314" id="option14">
                            <label for="option14" class="option_label">파워 도어룩</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="315" id="option15">
                            <label for="option15" class="option_label">파워스티어링 휠</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="316" id="option16">
                            <label for="option16" class="option_label">파워윈도우</label>
                        </div>
                        
                        <br>
                    	
                    	<!-- ---------------------------------------------------------------------- -->
                    	
                    	<div style="font-size: 2em; margin: 2%; margin-top:15%;">안전</div>
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="101" id="option17">
                            <label for="option17" class="option_label">에어백(운전석, 동승석)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="102" id="option18">
                            <label for="option18" class="option_label">에어백(사이드)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="103" id="option19">
                            <label for="option19" class="option_label">에어백(커튼)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="104" id="option20">
                            <label for="option20" class="option_label">브레이크 잠김 방지(ABS)</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="105" id="option21">
                            <label for="option21" class="option_label">미끄럼 방지(TCS)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="106" id="option22">
                            <label for="option22" class="option_label">차체자세 제어장치(ESC)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="107" id="option23">
                            <label for="option23" class="option_label">타이어 공기압센서(TPMS)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="108" id="option24">
                            <label for="option24" class="option_label">차선이탈 경보 시스템(LDWS)</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="111" id="option25">
                            <label for="option25" class="option_label">전자제어 서스페션(ECS)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="112" id="option26">
                            <label for="option26" class="option_label">주차감지센서(전방,후방)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="113" id="option27">
                            <label for="option27" class="option_label">후측방 경보 시스템</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="114" id="option28">
                            <label for="option28" class="option_label">후방카메라</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="115" id="option29">
                            <label for="option29" class="option_label">360도 어라운드뷰</label>
                        </div>
                        <br>
                        


                        
                        <!-- --------------------------------------------------------------------- -->
                        	
                    
                        
                        <div style="font-size: 2em; margin: 2%; margin-top:15%;">편의/멀티미디어</div>
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="401" id="option30">
                            <label for="option30" class="option_label">크루즈컨트롤(어댑티브)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="402" id="option31">
                            <label for="option31" class="option_label">헤드업 디스플레이(HUD)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="403" id="option32">
                            <label for="option32" class="option_label">전자식 주차브레이크(EPB)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="404" id="option33">
                            <label for="option33" class="option_label">자동 에어컨</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="405" id="option34">
                            <label for="option34" class="option_label">스마트키</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="406" id="option35">
                            <label for="option35" class="option_label">무선도어 잠금장치</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="407" id="option36">
                            <label for="option36" class="option_label">레인센서</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="408" id="option37">
                            <label for="option37" class="option_label">오토 라이트</label>
                        </div>
                        
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="409" id="option38">
                            <label for="option38" class="option_label">커튼/블라인드(뒷좌석, 후방)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="410" id="option39">
                            <label for="option39" class="option_label">내비게이션</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="411" id="option40">
                            <label for="option40" class="option_label">앞좌석 AV 모니터</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="412" id="option41">
                            <label for="option41" class="option_label">뒷좌석 AV 모니터</label>
                        </div>
                        
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="413" id="option42">
                            <label for="option42" class="option_label">블루투스</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="414" id="option43">
                            <label for="option43" class="option_label">USB 단자</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="415" id="option44">
                            <label for="option44" class="option_label">AUX 단자</label>
                        </div>
                        <br>
        <!-- ------------------------------------------------------------------------------------ -->                
                        
                        <div style="font-size: 2em; margin: 2%; margin-top:15%;">시트</div>
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="201" id="option45">
                            <label for="option45" class="option_label">가죽시트</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="202" id="option46">
                            <label for="option46" class="option_label">전동시트(운전석, 동승석)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="203" id="option47">
                            <label for="option47" class="option_label">전동시트(뒷좌석)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="204" id="option48">
                            <label for="option48" class="option_label">열선시트(앞좌석, 뒷좌석)</label>
                        </div>
                        
                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="205" id="option49">
                            <label for="option49" class="option_label">메모리시트(운전석, 동승석)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="206" id="option50">
                            <label for="option50" class="option_label">통풍시트(운전석, 동승석)</label>
                        </div>

                        <div class="option_checkBox">
                            <input type="checkbox" name="opt1" value="207" id="option51">
                            <label for="option51" class="option_label">퉁풍시트(뒷좌석)</label>
                        </div>

                    </div>
                    <div class="btn_group">
                        <button type="button" class="btn btn_back">이전</button>
                        <button type="button" class="btn btn_next">다음(설명글)</button>
                    </div>
                </div>

                <!-- 설명 -->
                <div class="car_explain select_board">
                    <h1 class="board_tit">차량정보를 설명을 입력해주세요</h1>

                    <div class="input_box">
                        <p class="input_tit">판매가격</p>
                        <input type="number" name="car_price" id="carPrice" placeholder="1,000,000"
                            style="text-align: left !important;padding-left: 210px !important;">
                        <label id="carPriceL"></label>
                    </div>

                    <div class="input_box">
                        <p class="input_tit">성능점검 기록부</p>
                        <input type="file" name="carTest_Img" id="catTest">
                        <label id="catTestL"></label>
                    </div>

                    <div class="input_box">
                        <textarea name="car_intro" id="introdC" cols="30" rows="30"></textarea>
                         <label id="introdCl"></label>
                    </div>

                    <div class="btn_group">
                        <button type="button" class="btn btn_back">이전</button>
                        <button type="button" class="btn btn_next">다음(사진)</button>
                    </div>
                </div>

                <!-- 사진 -->
                <div class="car_picture select_board">
                    <h1 class="board_tit">차량사진을 업로드 해주세요</h1>
                    <div class="input_box">
                        <p class="input_tit">전면부 사진</p>
                        <input type="file" name="c_Img1" class="upload_picture">
                    </div>

                    <div class="input_box">
                        <p class="input_tit">측면부 사진</p>
                        <input type="file" name="c_Img2" class="upload_picture">
                    </div>

                    <div class="input_box">
                        <p class="input_tit">차량 내부 사진</p>
                        <input type="file" name="c_Img3" class="upload_picture">
                    </div>

                  <!--   <div class="input_box">
                        <p class="input_tit">후면부 사진</p>
                        <input type="file" name="" class="upload_picture">
                    </div> -->

                    <div class="btn_group">
                        <button type="button" class="btn btn_back">이전</button>
                        <button type="button" class="btn btn_next">다음(결제)</button>
                    </div>
                </div>

                <!-- 결제 -->
                <div class="car_payment select_board">
                    <h1 class="board_tit">광고상품 선택</h1>
                    <div class="option_wrap">
                        <div class="payment_checkBox">
                            <input type="checkbox" checked disabled>
                            <label class="payname">셀프등록<span class="small"> + 수동업데이트 3회</span></label>
                            <label class="payprice"><span
                                    style="border: 1px solid #ededed; border-radius: 4px;">필수</span>
                                24,000원</label>
                            <hr class="ddd">
                            <input type="checkbox" name="o1" onclick="car()">
                            <label class="payname">오토체인지<span class="small"> 원하는 시간에 리스트 상단으로 자동
                                    노출</span> <span class="hot small">Hot</span></label>
                            <label class="payprice"> 5,000원</label>
                        </div>

                    </div>
                    <h3 style="color: gray; margin: 24px 0 8px">더 빠른 판매, 프리미엄 광고!</h3>
                    <div class="option_wrap">
                        <div class="payment_checkBox">
                            <input type="checkbox" name="o2" onclick="car()"> 
                            <label class="payname">핫마크<span class="small"> 종류별 핫마크 3회</span></label>
                            <label class="payprice">10,000원</label>
                            <hr class="ddd">
                            <input type="checkbox" name="o3" onclick="car()">
                            <label class="payname">자동 업데이트<span class="small"> 일 12회 자동으로 상위 노출</span> <span
                                    class="hot small">Best</span></label>
                            <label class="payprice"> 30,000원</label>
                            <hr class="ddd">
                            <input type="checkbox" name="o4" onclick="car()">
                            <label class="payname">사진우대<span class="small"> 최상단 + 대형사진 + 문구색상 </span></label>
                            <label class="payprice"> 72,000원</label>
                            <hr class="ddd">
                            <input type="checkbox" name="o5" onclick="car()">
                            <label class="payname">우대등록<span class="small">상단 + 사진2장 + 한줄광고 </span></label>
                            <label class="payprice"> 30,000원</label>
                            <hr class="ddd">
                            <input type="checkbox" name="o6" onclick="car()">
                            <label class="payname">모바일 프리미엄<span class="small"> 모바일 최상단 + 대형사진 4장</span> <span
                                    class="hot small">Best</span></label>
                            <label class="payprice"> 100,000원</label>
                            <hr class="ddd">
                            <input type="checkbox" name="o7" onclick="car()">
                            <label class="payname">모바일우대<span class="small"> 모바일 중간 전용 영역</span> <span
                                    class="hot small">Hot</span></label>
                            <label class="payprice"> 50,000원</label>
                        </div>

                    </div>
                         <input type="text" name="total" id="total" value="24000" readonly="readonly" />

                    <div class="btn_group">
                        <button type="button" class="btn btn_back">이전</button>
                        <button class="btn">결제</button>
                    </div>
                </div>





            </form>
        </div>
    </div>
</section>



<script src="js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

    $(function () {
    	// 차량번호 입력값 체크
    	$('#carNum').focus(function(){
    		$('#carN').html('번호판 형식에 맞게 입력해 주세요. \n 예) "00가0000", "000나0000"').css({
    			'color': 'red'		   	,
    			'margin-bottom':'8px','display':'block'	
    		});
    		carF.carNum.focus();
    	})
    	
    	
    	// 차량번호 정규식 메타 체크
    	$('#carNum').focusout(function(){
	    		if(isCarNum(carF.carNum)) {
	    			$('#carN').html('올바른 형식 입니다.').css({
	        			'color': 'green',
	        			'margin-bottom':'8px','display':'block'
	        		});
	    		}
    		})
    	
    	// 연식 입력값 체크
    	$('#date').focus(function(){
    		$('#carD').html('년식을 [0000.00] 형식에 맞춰 주세요.').css({
    			'color': 'red'		   	,
    			'margin-bottom':'8px','display':'block'	
    		});
    	})
    	
    	$('#date').focusout(function(){
	    		if(isDate(carF.date)) {
	    			$('#carD').html('옳바른 형식 입니다.').css({
	        			'color': 'green',
	        			'margin-bottom':'8px','display':'block'  			
	        		});
	    		}
    		})
    		
    	// 배기량 입력값 체크
    	$('#cc').focus(function(){
    		$('#carC').html('차량의 배기량을 4자리 숫자로 입력해 주세요.').css({
    			'color': 'red'		   	,
    			'margin-bottom':'8px','display':'block'	
    		});
    	})
    	
    	$('#cc').focusout(function(){
	    		if(isCc(carF.cc)) {
	    			$('#carC').html('옳바른 형식 입니다.').css({
	        			'color': 'green',
	        			'margin-bottom':'8px','display':'block'			
	        		});
	    		}
    		})
    		
    	// 주행거리 입력값 체크
    	$('#km').focus(function(){
    		$('#carK').html('차량의 주행거리를 6자리 이내의 숫자로 입력해 주세요.').css({
    			'color': 'red'			   	,
    			'margin-bottom':'8px','display':'block'
    		});
    	})
    	
    	$('#km').focusout(function(){
	    		if(isKm(carF.km)) {
	    			$('#carK').html('옳바른 형식 입니다.').css({
	        			'color': 'green',
	        			'margin-bottom':'8px','display':'block'			
	        		});
	    		}
    		})
    		
    	// 이전 카테고리 미선택시 나오는 문구.
    	$('#company-name').click(function(){
    		if(!$('#countryR').text()){
    			$('#countryRl').html('제조국을 먼저 선택해 주세요.').css('color', 'blue').css({'margin-bottom':'8px','display':'block'});
    		}
    	})

    	$('#model-name').click(function(){
    		if(!$('#companyR').text()){
    			$('#companyRl').html('제조사를 먼저 선택해 주세요.').css('color', 'blue').css({'margin-bottom':'8px','display':'block'});
    		}
    	})
    	
    	$('#detail-name2').click(function(){
    		if(!$('#modelR').text()){
    			$('#modelRl').html('모델을 먼저 선택해 주세요.').css('color', 'blue').css({'margin-bottom':'8px','display':'block'});
    		}
    	})
    	   
    	
    	// 첫번째 탭 유효성 체크
        $('.btn_next').click(function(){    

			if($('#header_car_info').is('.selected_header')){
	        	if(!carF.carNum.value) {
	        		$('#carN').html('번호판 형식에 맞게 입력해 주세요. \n 예) "00가0000", "000나0000"').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	            	carF.carNum.focus();
	            } else if(!isCarNum(carF.carNum)) {
	        		$('#carL').html('번호판 형식에 맞게 입력해 주세요. \n 예) "00가0000", "000나0000"').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	        		carF.carNum.select();
	        	} else if(!$('#carS').text()) { 
	 				$('#carSl').html('차종을 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	 				var offset = $("#carSl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!$('#countryR').text()) { 
	 				$('#countryRl').html('국내/수입 모델을 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});   
	 				var offset = $("#countryRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!$('#companyR').text()) { 
	 				$('#companyRl').html('제조사를 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	 				var offset = $("#companyRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!$('#modelR').text()) { 
	 				$('#modelRl').html('모델을 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	 				var offset = $("#modelRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!$('#smodelR').text()) { 
	 				$('#smodelRl').html('세부 모델을 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	 				var offset = $("#smodelRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!$('#fuelR').text()) { 
	 				$('#fuelRl').html('연료를 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	 				var offset = $("#fuelRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!carF.date.value) {
	        		$('#carD').html('년식을 [0000.00] 형식에 맞춰 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	            	carF.date.focus();
	            } else if(!isDate(carF.date)){
	            	alert('년식을 [0000.00] 형식에 맞춰 주세요.');
	            	carF.date.select();
	            } else if(!carF.cc.value) {
	            	alert('차량의 배기량을 입력해 주세요.');
	            	carF.cc.focus();
	            } else if(!isCc(carF.cc)) { 
	            	alert('차량의 배기량을 4자리 숫자로 입력해 주세요.');
	            	carF.cc.select();
	        	} else if(!$('#seaterR').text()) { 
	 				$('#seaterRl').html('인승을 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	 				var offset = $("#seaterRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!$('#gearR').text()) { 
	 				$('#gearRl').html('변속기를 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'}); 
	 				var offset = $("#gearRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!$('#colorR').text()) { 
	 				$('#colorRl').html('색상을 선택해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	 				var offset = $("#colorRl").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
	        	} else if(!carF.km.value) {
	        		$('#carK').html('차량의 주행거리를 입력해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'}); 
	            	carF.km.focus();
	            } else if(!isKm(carF.km)) {
	            	$('#carK').html('차량의 주행거리를 6자리 이내의 숫자로 입력해 주세요.').css('color', 'red').css({'margin-bottom':'8px','display':'block'});
	            	carF.km.select();
	            } else {
	            	$(this).parents('.select_board').removeClass('board_active');
			        $(this).parents('.select_board').next().addClass('board_active');
			        var i = $(this).parents('.select_board').index();
			        $('.bWrap_header>ul>li').removeClass('selected_header');
			        $('.bWrap_header>ul>li').eq(i + 1).addClass('selected_header');
	            }
	        	return;
			}
			
			if($('#header_car_option').is('.selected_header')){
				
				$(this).parents('.select_board').removeClass('board_active');
		        $(this).parents('.select_board').next().addClass('board_active');
		        var i = $(this).parents('.select_board').index();
		        $('.bWrap_header>ul>li').removeClass('selected_header');
		        $('.bWrap_header>ul>li').eq(i + 1).addClass('selected_header');
				return;
			}
			
			
			if($('#header_car_explain').is('.selected_header')) {
				if(!carF.carPrice.value) {
					$('#carPriceL').html("차량 가격을 입력해 주세요.").css('color', 'red').css({'margin-bottom':'8px','display':'block'});
					var offset = $("#carPrice").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
				} else if(!carF.catTest.value) {
					$('#catTestL').html("차량 성능점검기록부 파일을 첨부해 주세요.").css('color', 'red').css({'margin-bottom':'8px','display':'block'});
					var offset = $("#catTest").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
				} else if(!carF.introdC.value) {
					$('#introdCl').html("차량 설명글을 입력해 주세요.").css('color', 'red').css({'margin-bottom':'8px','display':'block'});
					var offset = $("#introdC").offset();
	 		        $('html').animate({scrollTop : offset.top-130}, 200);
				} else {
					$(this).parents('.select_board').removeClass('board_active');
			        $(this).parents('.select_board').next().addClass('board_active');
			        var i = $(this).parents('.select_board').index();
			        $('.bWrap_header>ul>li').removeClass('selected_header');
			        $('.bWrap_header>ul>li').eq(i + 1).addClass('selected_header');									
				}
				return;
				
			}
			
			if($('#header_car_picture').is('.selected_header')){
				$(this).parents('.select_board').removeClass('board_active');
		        $(this).parents('.select_board').next().addClass('board_active');
		        var i = $(this).parents('.select_board').index();
		        $('.bWrap_header>ul>li').removeClass('selected_header');
		        $('.bWrap_header>ul>li').eq(i + 1).addClass('selected_header');
		        return;
			}
        })
             
      // 이전페이지
	  $('.btn_back').click(function () {
          $(this).parents('.select_board').removeClass('board_active');
          $(this).parents('.select_board').prev().addClass('board_active');

          var i = $(this).parents('.select_board').index();

          $('.bWrap_header>ul>li').removeClass('selected_header');
          $('.bWrap_header>ul>li').eq(i - 1).addClass('selected_header');
      })

        // 클릭시 보이기
        $('.selected').click(function () {
            $('.selected').css('border', '1px solid #ededed');
            $(this).css('border', '1px solid #e66b27');
            $('.options-container').removeClass('active');
            $(this).siblings('.options-container').toggleClass('active');
        });

        //클릭시 option등장
        //$('.option').click(function () {
        $(document).on('click', '.option', function(){
            $(this).siblings().children('input').prop('checked', false);
            $(this).children('input').prop('checked', true);
            $(this).parent().removeClass('active');
            let val = $(this).children('input').val()
            $(this).parent().next().children().text(val);
            $(this).parent().next().css('border', '');
        })


    })
    
        var op1 = 0;
        var op2 = 0;
        var op3 = 0;
        var op4 = 0;
        var op5 = 0;
        var op6 = 0;
        var op7 = 0;

        function func1() {
            if (document.carF.o1.checked) {
                op1 = 5000;
            } else {
                op1 = 0;
            }
            console.log('op1  ' + op1);
            return op1;
        }
        function func2() {
            if (document.carF.o2.checked) {
                op2 = 10000;
            } else {
                op2 = 0;
            }
            console.log('op2  ' + op2);
            return op2;
        }

    function func3() {
        if (document.carF.o3.checked) {
            op3 = 30000;
        } else {
            op3 = 0;
        }
        console.log('op2  ' + op2);
        return op3;
    }
    
    function func4() {
        if (document.carF.o4.checked) {
            op4 = 72000;
        } else {
            op4 = 0;
        }
        console.log('op2  ' + op2);
        return op4;
    }
    
    function func5() {
        if (document.carF.o5.checked) {
            op5 = 30000;
        } else {
            op5 = 0;
        }
        console.log('op2  ' + op2);
        return op5;
    }
    
    function func6() {
        if (document.carF.o6.checked) {
            op6 = 100000;
        } else {
            op6 = 0;
        }
        console.log('op2  ' + op2);
        return op6;
    }
    
    function func7() {
        if (document.carF.o7.checked) {
            op7 = 50000;
        } else {
            op7 = 0;
        }
        console.log('op2  ' + op2);
        return op7;
    }
    

        function car() {
            func1();
            func2();
            func3();
            func4();
            func5();
            func6();
            func7();
            
            document.carF.total.value = 24000 + op1 + op2 + op3 + op4 + op5 + op6 + op7;
        }
    
    
</script>
<c:import url="/foot" />
