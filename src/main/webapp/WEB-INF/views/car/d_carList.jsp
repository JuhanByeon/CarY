<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String myctx = request.getContextPath();
%>

<c:import url="/top" />


<style>
@charset "UTF-8";

td {
	padding-bottom: 30px;
}

.model_checkbox_list {
	font-size: 16px;
	padding: 5px !important;
}

.side_tit {
	padding: 12px 0;
	background: #fff;
}

h2.side_tit {
	margin-top: 12px;
	font-size: 24px;
}

h3.side_tit {
	font-size: 18px;
}

.popup_exit {
	float: right;
	text-decoration: none;
	color: black;
}

.text_size_default {
	font-size: 16px !important;
}

.popup_board {
	display: none;
	width: 70%;
	height: 70%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: fixed;
	margin: auto;
	background: #ffffff;
	z-index: 7777;
	border: 1px solid black;
	padding: 3%;
}

.popup_board_block {
	width: 100%;
	float: left;
}

.popup_board_block_color, .popup_scroll {
	width: 100%;
	float: left;
	max-height: 70%;
	overflow-y: scroll;
}

.popup_board_block_color::-webkit-scrollbar, .popup_scroll::-webkit-scrollbar
	{
	width: 3px;
	/* background: #dadada; */
}

.popup_board_block_color::-webkit-scrollbar-thumb, .popup_scroll::-webkit-scrollbar-thumb
	{
	background: #dadada;
	border-radius: 3px;
}

.checkbox_wrap_popup_color {
	padding: 10px;
	float: left;
	width: 100%;
	box-sizing: border-box;
	margin-bottom: 6px;
	position: relative;
}

.popup_header {
	margin-top: 0 !important;
}

.popup_header, .popup_tit {
	border-bottom: 2px solid #a09e9e;
	box-sizing: border-box;
	padding: 18px 6px;
}

.popup_tit {
	border-bottom: 1px solid #c2c0c0 !important;
	margin: 2%;
}

.checkbox_wrap_popup {
	padding: 10px;
}

ul, li {
	list-style: none;
	margin: 0;
	padding: 0;
}

.select_box_align {
	width: 10%;
	padding: 0;
	border: none;
	color: #777;
	font-size: 14px;
	float: right;
	text-align-last: right;
	padding-right: 5px;
}

.select_box_align:focus, .select_box_align:active {
	outline: none !important;
	border: none !important;
}

.select_box_align option {
	direction: rtl;
}

input[type="text"]:active, input[type="text"]:focus, select:active,
	select:focus {
	outline: none !important;
	border: 1px solid #e66b27 !important;
}

input[type="text"] {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	padding: 12px;
	border: 1px solid #ededed;
	font-size: 16px;
}

select {
	float: left;
	width: 45%;
	box-sizing: border-box;
	font-size: 16px;
	padding: 4px 6px 8px;
	border: 1px solid #ededed;
}
.new_select_box{
	width: 100% !important;
	margin-bottom:5px;
}
.new_select_box:last-child{
	margin-bottom:0;
}


.wave {
	float: left;
	width: 10%;
	padding: 6px;
	box-sizing: border-box;
}

.text-center {
	text-align: center;
	font-size: 16px;
	margin: 0;
	padding: 0;
}

.reset_btn, .more_btn, .align_btn {
	float: right;
	background: none;
	border: none;
	outline: none;
	color: #777;
	cursor: pointer;
	font-size: 14px;
}

.reset_btn {
	margin-top: 8px;
}

.more_btn {
	margin-top: 6px;
	float: left !important;
}

.reset_btn:after {
	content: '';
	background: url("../images/reset.png");
	float: right;
	background-size: contain;
	background-repeat: no-repeat;
	margin-top: 2px;
	margin-left: 2px;
	width: 14px;
	height: 14px;
}

.reset_btn:active {
	background: none;
	border: none;
	outline: none;
}

.clfixed:after, .clfixed:before {
	content: "";
	display: block;
	clear: both;
}

.container {
	width: 90%;
	max-width: 1280px;
	margin: 0 auto;
}

input.none[type="checkbox"] {
	appearance: none;
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

label.none_checkbox {
	padding: 8px 0;
	font-size: 13px;
	width: 100%;
	display: block;
	text-align: center;
	box-sizing: border-box;
}

label.none_checkbox_color {
	padding: 8px 0 8px 24px;
	font-size: 13px;
	width: 100%;
	display: block;
	text-align: left;
	box-sizing: border-box;
}

.circle {
	position: absolute;
	top: 20px;
	left: 5px;
}

.circle_2 {
	position: absolute;
	top: 8px;
	left: 5px;
}

.circle span, .circle_2 span {
	width: 13px;
	height: 13px;
	display: inline-block;
	border: 1px solid #ededed;
	border-radius: 50%;
}

.car_box {
	padding: 2%;
	box-sizing: border-box;
	border: 1px solid black;
	box-sizing: border-box;
	margin-bottom: 12px;
	background: #fff;
}

.checkbox_wrap {
	float: left;
	width: 33.3333333%;
	/* border: 1px solid black; */
	box-sizing: border-box;
	/* margin-bottom: 6px; */
	position: relative;
}

.checkbox_wrap_2 {
	float: left;
	width: 50%;
	/* border: 1px solid black; */
	box-sizing: border-box;
	/* margin-bottom: 6px; */
	position: relative;
}

.checkbox_wrap, .checkbox_wrap_2 {
	box-shadow: /* 1px 0 0 0 black,  */
		/* 0 1px 0 0 black,  */ 1px 1px 0 0 #ededed, 1px 0 0 0 #ededed inset,
		0 1px 0 0 #ededed inset;
}

.checkbox_wrap:nth-child(3n+2) {
	/* margin: 0 2%; */
	width: 33.3333334%;
}

.selected {
	background: #e66b27;
	color: #ededed;
}

.car_model {
	max-height: 180px;
	opacity: 1;
	overflow-y: scroll;
}

.car_model::-webkit-scrollbar {
	width: 3px;
}

.car_model::-webkit-scrollbar-thumb {
	background: #dadada;
	border-radius: 3px;
}

.option_board_blcok {
	width: 25%;
}

.main_tit {
	width: 100%;
	padding: 24px 0;
	box-sizing: border-box;
	border-bottom: 3px solid #ededed;
	margin-bottom: 50px;
}

.list_img {
	width: 100%;
	float: left;
	/* border: 1px solid black; */
	box-sizing: border-box;
}

.list_center {
	float: left;
	width: 100%;
	/* border: 1px solid black; */
	box-sizing: border-box;
	margin-top: 10px !important;
}

.list_right {
	float: right;
	width: 100%;
	/* border:1px solid black; */
	box-sizing: border-box;
	margin-top: 10px !important;
}

.tag {
	padding: 4px 6px !important;
	background: #ededed;
	font-size: 12px;
	border-radius: 6px;
}

.list_car_info li {
	float: left;
	font-size: 12px;
	padding-right: 2% !important;
}

/* 모바일 사이즈 */
@media ( max-width : 767px) {
	.sidebox {
		display: none;
		width: 100%;
		height: 100%;
		position: absolute;
		top: 0;
		left: 0;
		z-index: 7776;
		background: #ffffff;
	}
	.side {
		width: 90%;
		margin: 0 auto;
	}
	.side_exit {
		display: block;
		float: right;
		text-decoration: none;
		color: black;
	}
	.side_tit {
		max-height: 32px;
		overflow: hidden;
	}
	#reset_btn {
		float: none;
	}
	.mobile_header {
		width: 100%;
		margin-top: 12px;
	}
	.mobile_header img {
		display: block;
		width: 100%;
		max-width: 100%;
		height: auto;
	}
}

/* 태블릿 사이즈 */
@media ( min-width : 768px) {
	.mobile_header {
		display: none;
	}
	.checkbox_wrap_popup_color, .popup_board_block {
		width: 25%;
	}
	.side_exit {
		display: none;
	}
	.mainbox {
		/* border: 1px solid black; */
		float: right;
		width: calc(63% - 40px) !important;
		box-sizing: border-box;
		margin-left: 40px;
	}
	.sidebox {
		float: left;
		width: 37%;
		display: block;
	}
}

@media ( min-width : 1132px) {
	.list_img {
		width: 28%;
		float: left;
		/* border: 1px solid black; */
		margin-right: 1%;
		box-sizing: border-box;
	}
	.list_center {
		float: left;
		width: 50%;
		/* border: 1px solid black; */
		box-sizing: border-box;
		margin-right: 1%;
	}
	.list_right {
		float: right;
		width: 20%;
		/* border:1px solid black; */
		box-sizing: border-box;
	}
	.mainbox {
		/* border: 1px solid black; */
		float: right;
		width: calc(73% - 40px) !important;
		box-sizing: border-box;
		margin-left: 40px;
	}
	.sidebox {
		float: left;
		width: 27%;
		display: block;
	}
}
</style>

<div class="container">

	<!-- 색상 더보기 팝업 -->
	<div class="popup_board clfixed" id="popup_board_color">
		<h2 class="popup_header">
			색상 <a href="#;" class="popup_exit">ⅹ</a>
		</h2>
		<div class="popup_board_block_color clfixed">
			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="1c" class="none"
					value="진주투톤"> <label for="1c"
					class="none_checkbox_color text_size_default">진주투톤</label>
				<div class="circle">
					<span
						style="background: linear-gradient(90deg, rgb(255, 255, 240) 0%, rgb(255, 255, 240) 49%, rgb(221, 221, 201) 50%, rgb(221, 221, 201) 100%);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="2c" class="none"
					value="은하색"> <label for="2c"
					class="none_checkbox_color text_size_default">은하색</label>
				<div class="circle">
					<span style="background: #A6B2B0;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="3c" class="none"
					value="명은색"> <label for="3c"
					class="none_checkbox_color text_size_default">명옥색</label>
				<div class="circle">
					<span style="background: #D0D9E7;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="4c" class="none"
					value="빨간색"> <label for="4c"
					class="none_checkbox_color text_size_default">빨간색</label>
				<div class="circle">
					<span style="background: red;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="5c" class="none"
					value="주황색"> <label for="5c"
					class="none_checkbox_color text_size_default">주황색</label>
				<div class="circle">
					<span style="background: orange;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="6c" class="none"
					value="자주색"> <label for="6c"
					class="none_checkbox_color text_size_default">자주색</label>
				<div class="circle">
					<span style="background: #7D265B;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="7c" class="none"
					value="보라색"> <label for="7c"
					class="none_checkbox_color text_size_default">보라색</label>
				<div class="circle">
					<span style="background: purple;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="8c" class="none"
					value="분홍색"> <label for="8c"
					class="none_checkbox_color text_size_default">분홍색</label>
				<div class="circle">
					<span style="background: pink;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="9c" class="none"
					value="노란색"> <label for="9c"
					class="none_checkbox_color text_size_default">노란색</label>
				<div class="circle">
					<span style="background: yellow;"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="1d" class="none"
					value="갈대색"> <label for="1d"
					class="none_checkbox_color text_size_default">갈대색</label>
				<div class="circle">
					<span style="background: rgb(128, 129, 116);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="2d" class="none"
					value="연금색"> <label for="2d"
					class="none_checkbox_color text_size_default">연금색</label>
				<div class="circle">
					<span style="background: rgb(142, 133, 116);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="3d" class="none"
					value="갈색"> <label for="3d"
					class="none_checkbox_color text_size_default">갈색</label>
				<div class="circle">
					<span style="background: rgb(104, 90, 54);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="4d" class="none"
					value="갈색투톤"> <label for="4d"
					class="none_checkbox_color text_size_default">갈색투톤</label>
				<div class="circle">
					<span
						style="background: linear-gradient(90deg, rgb(104, 90, 54) 0%, rgb(104, 90, 54) 49%, rgb(70, 71, 65) 50%, rgb(70, 71, 65) 100%);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="5d" class="none"
					value="금색"> <label for="5d"
					class="none_checkbox_color text_size_default">금색</label>
				<div class="circle">
					<span style="background: rgb(130, 116, 56);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="6d" class="none"
					value="금색투톤"> <label for="6d"
					class="none_checkbox_color text_size_default">금색투톤</label>
				<div class="circle">
					<span
						style="background: linear-gradient(90deg, rgb(130, 116, 56) 0%, rgb(130, 116, 56) 49%, rgb(70, 71, 65) 50%, rgb(70, 71, 65) 100%);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="7d" class="none"
					value="청색"> <label for="7d"
					class="none_checkbox_color text_size_default">청색</label>
				<div class="circle">
					<span style="background: rgb(18, 66, 127);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="8d" class="none"
					value="하늘색"> <label for="8d"
					class="none_checkbox_color text_size_default">하늘색</label>
				<div class="circle">
					<span style="background: rgb(117, 145, 156);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="9d" class="none"
					value="담녹색"> <label for="9d"
					class="none_checkbox_color text_size_default">담녹색</label>
				<div class="circle">
					<span style="background: rgb(30, 68, 75);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="1e" class="none"
					value="녹색"> <label for="1e"
					class="none_checkbox_color text_size_default">녹색</label>
				<div class="circle">
					<span style="background: rgb(46, 205, 0);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="2e" class="none"
					value="연두색"> <label for="2e"
					class="none_checkbox_color text_size_default">연두색</label>
				<div class="circle">
					<span style="background: rgb(154, 185, 92);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="3e" class="none"
					value="청옥색"> <label for="3e"
					class="none_checkbox_color text_size_default">청옥색</label>
				<div class="circle">
					<span style="background: rgb(31, 125, 124);"></span>
				</div>
			</div>

			<div class="checkbox_wrap_popup_color">
				<input type="checkbox" name="car_Color" id="etc_color" class="none"
					value="기타"> <label for="etc_color"
					class="none_checkbox_color text_size_default">기타</label>
				<div class="circle">
					<span
						style="background: linear-gradient(90deg, red 14%, orange 28%, yellow 42%, green 56%, blue 70%, navy 84%, purple 100%);"></span>
				</div>
			</div>

		</div>
	</div>


	<!-- 옵션 더보기 팝업 -->

	<div class="popup_board clfixed" id="popup_board_option">
		<h2 class="popup_header">
			옵션 <a href="#;" class="popup_exit">ⅹ</a>
		</h2>
		<div class="popup_scroll">
			<div class="popup_board_block clfixed">
				<h3 class="popup_tit">안전</h3>
				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="airbag1" class="none"
						value="101"> <label for="airbag1"
						class="none_checkbox_popup">에어백(운전석,동승석)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="airbag2" class="none"
						value="102"> <label for="airbag2"
						class="none_checkbox_popup">에어백(사이드)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="airbag3" class="none"
						value="103"> <label for="airbag3"
						class="none_checkbox_popup">에어백(커튼)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="abs" class="none"
						value="104"> <label for="abs" class="none_checkbox_popup">브레이크
						잠김 방지(ABS)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="tcs" class="none"
						value="105"> <label for="tcs" class="none_checkbox_popup">미끄럼
						방지(TCS)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="esc" class="none"
						value="106"> <label for="esc" class="none_checkbox_popup">차체자세
						제어장치(ESC)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="tpms" class="none"
						value="107"> <label for="tpms" class="none_checkbox_popup">타이어
						공기압센서(TPMS)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="ldws" class="none"
						value="108"> <label for="ldws" class="none_checkbox_popup">차선이탈
						경보 시스템(LDWS)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="ecs" class="none"
						value="111"> <label for="ecs" class="none_checkbox_popup">전자제어
						서스펜션(ECS)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="jks" class="none"
						value="112"> <label for="jks" class="none_checkbox_popup">주차감지센서(전·후방)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="htbks" class="none"
						value="113"> <label for="htbks"
						class="none_checkbox_popup">후측방 경보 시스템</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="hbc" class="none"
						value="114"> <label for="hbc" class="none_checkbox_popup">후방카메라</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="arv" class="none"
						value="115"> <label for="arv" class="none_checkbox_popup">360도
						어라운드뷰</label>
				</div>

			</div>

			<div class="popup_board_block clfixed">
				<h3 class="popup_tit">시트</h3>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="asf" class="none"
						value="202"> <label for="asf" class="none_checkbox_popup">전동시트(운전석·동승석)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="asb" class="none"
						value="203"> <label for="asb" class="none_checkbox_popup">전동시트(뒷좌석)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="ms" class="none"
						value="205"> <label for="ms" class="none_checkbox_popup">메모리시트(운전석·동승석)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="tpsf" class="none"
						value="206"> <label for="tpsf" class="none_checkbox_popup">통풍시트(운전석·동승석)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="tpsb" class="none"
						value="207"> <label for="tpsb" class="none_checkbox_popup">통풍시트(뒷좌석)</label>
				</div>
			</div>

			<div class="popup_board_block clfixed">
				<h3 class="popup_tit">외관/내관</h3>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="pdt" class="none"
						value="303"> <label for="pdt" class="none_checkbox_popup">파워전동트렁크</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="gdc" class="none"
						value="304"> <label for="gdc" class="none_checkbox_popup">고스트
						도어 클로징</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="dsm" class="none"
						value="305"> <label for="dsm" class="none_checkbox_popup">전동접이
						사이드 미러</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="awh" class="none"
						value="306"> <label for="awh" class="none_checkbox_popup">알루미늄
						휠</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="rfw" class="none"
						value="307"> <label for="rfw" class="none_checkbox_popup">루프랙</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="hswh" class="none"
						value="308"> <label for="hswh" class="none_checkbox_popup">열선
						스티어링 휠</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="acswh" class="none"
						value="309"> <label for="acswh"
						class="none_checkbox_popup">전동 조절 스티어링 휠</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="ps" class="none"
						value="310"> <label for="ps" class="none_checkbox_popup">패들
						시프트</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="swhr" class="none"
						value="311"> <label for="swhr" class="none_checkbox_popup">스티어링
						휠 리모컨</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="ecm" class="none"
						value="312"> <label for="ecm" class="none_checkbox_popup">ECM
						룸미러</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="highpass" class="none"
						value="313"> <label for="highpass"
						class="none_checkbox_popup">하이패스</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="powerdoorlock"
						class="none" value="314"> <label for="powerdoorlock"
						class="none_checkbox_popup">파워 도어룩</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="powerwheel" class="none"
						value="315"> <label for="powerwheel"
						class="none_checkbox_popup">파워스티어링 휠</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="powerwindow" class="none"
						value="316"> <label for="powerwindow"
						class="none_checkbox_popup">파워윈도우</label>
				</div>
			</div>

			<div class="popup_board_block clfixed">
				<h3 class="popup_tit">편의</h3>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="crusiecontrol"
						class="none" value="401"> <label for="crusiecontrol"
						class="none_checkbox_popup">크루즈컨트롤(어댑티브)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="headup" class="none"
						value="402"> <label for="headup"
						class="none_checkbox_popup">헤드업 디스플레이(HUD)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="peb" class="none"
						value="403"> <label for="peb" class="none_checkbox_popup">전자식
						주차브레이크(EPB)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="autoair" class="none"
						value="404"> <label for="autoair"
						class="none_checkbox_popup">자동에어컨</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="doorblock" class="none"
						value="406"> <label for="doorblock"
						class="none_checkbox_popup">무선도어 잠금장치</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="rainsensor" class="none"
						value="407"> <label for="rainsensor"
						class="none_checkbox_popup">레인센서</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="autolight" class="none"
						value="408"> <label for="autolight"
						class="none_checkbox_popup">오토라이트</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="ctblind" class="none"
						value="409"> <label for="ctblind"
						class="none_checkbox_popup">커튼·블라인드(뒷좌석·후방)</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="avfront" class="none"
						value="411"> <label for="avfront"
						class="none_checkbox_popup">앞좌석 AV 모니터</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="avback" class="none"
						value="412"> <label for="avback"
						class="none_checkbox_popup">뒷좌석 AV 모니터</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="bluetooth" class="none"
						value="413"> <label for="bluetooth"
						class="none_checkbox_popup">블루투스</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="usb" class="none"
						value="414"> <label for="usb" class="none_checkbox_popup">USB
						단자</label>
				</div>

				<div class="checkbox_wrap_popup">
					<input type="checkbox" name="opt_idx" id="aux" class="none"
						value="415"> <label for="aux" class="none_checkbox_popup">AUX
						단자</label>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 옵션 더보기 팝업 끝 ///////////////////////////////////////////////////////////////// -->

	<div class="box">
		<div class="mobile_header">
			<a href="#;" id="side_open"><img src="../mobile_header.png"
				alt="검색이미지"></a>
		</div>
		<div class="mainbox clfixed">


			<section class="main">


				<div id="table">
					<!-- 메인 시작  -->
					<div class="main_tit clfixed">
						<p style="float: left; margin: 0; margin-right: 3%;">
							총 <span style="color: red;">${totalCount}</span>대
						</p>
						<select name="align" id="align" class="select_box_align">
							<option value="15" selected>15개</option>
							<option value="30">30개</option>
							<option value="45">45개</option>
							<option value="60">60개</option>
						</select>
						<button class="align_btn align_price">가격</button>
						<button class="align_btn align_km">주행거리</button>
						<button class="align_btn align_year">연식</button>


					</div>
					<!-- 헤더끝 -->


					<table id="table2" class="table table-danger">


						<!-- forEach ----------------- -->
						<c:if test="${list eq null or empty list}">
							<tr>
								<td colspan="3"><b>데이터가 없습니다.</b>
							</tr>
						</c:if>
						<c:if test="${list ne null and not empty list}">
							<c:forEach var="list" items="${list}">
								<tr> <!-- "javascript:void(window.open('<%=myctx%>/cardetail.do?idx=${list.idx}', '차량세부조회','width=#, height=#'))" -->
									<td><a 
										href="javascript:void(window.open('<%=myctx%>/cardetail?idx=${list.idx}', '_blank'))">
											<img src="images/${list.car_img1}" style="width: 180px">
									</a></td>
									<td><a
										href="javascript:void(window.open('<%=myctx%>/cardetail?idx=${list.idx}', '_blank'))">
											<span>${list.b_name}  ${list.s_name}</span>
									</a><br> <span>${list.car_age}년 ${list.car_km}KM ${list.car_fuel} ${list.car_test}</span>
									</td>
									<td><span>홈서비스 여부</span><br> <span
										class="text-danger">${list.car_price}</span><br> <span>할부
											월 N 원</span></td>
								</tr>
							</c:forEach>
						</c:if>
						<!-- forEach end--------------------------- -->

						<tr>
							<td colspan="3" class="text-center">
								<!-- begin:시작값, end: 끝값, step: 증가치 -->
								<ul class="pagination justify-content-center">

									<c:if test="${prevBlock>0}">
										<!-- 이전 5개 -->
										<li class="page-item"><a class="page-link"
											href="carList.do?cpage=${prevBlock}">이전${pagingBlock}개</a></li>
									</c:if>

									<c:forEach var="i" begin="${prevBlock+1}" end="${nextBlock-1}"
										step="1">
										<c:if test="${i<=pageCount}">
											<li class="page-item <c:if test="${cpage==i}">active</c:if>">
												<a class="page-link" href="carList.do?cpage=${i}">[${i}]</a>
											</li>
										</c:if>
									</c:forEach>

									<c:if test="${nextBlock<=pageCount}">
										<!-- 이후 5개 -->
										<li class="page-item"><a class="page-link"
											href="carList.do?cpage=${nextBlock}">이후${pagingBlock}개</a></li>
									</c:if>

								</ul>
							</td>
							<td colspan="2" class="text-center">총 차량 수:<span
								class="text-danger">${totalCount}개</span> <br> <span
								class="text-danger">${cpage}</span>/ <span>${pageCount}</span>
							</td>
						</tr>
					</table>
				</div>
				<!-- 메인끝 -->

			</section>

		</div>
		<div class="sidebox clfixed">

			<aside class="side">

				<!-- 차량검색 -->
				<h2 class="side_tit">
					차량 검색 <a href="#;" class="side_exit">ⅹ</a>
					<button type="reset" class="reset_btn" id="reset_btn">초기화</button>
				</h2>
				<div class="car_box car_search_input clfixed">
					<div class="input_box">
						<input type="text" name="car_Num" id="car_number"
							placeholder="모델명 입력 예) 아반떼MD">
					</div>
				</div>

				<!-- 차종 -->
				<h3 class="side_tit">차종</h3>
				<form name="car_search" id="car_search">
					<div id="car_size" class="car_box car_kind clfixed">
						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="compact" class="none"
								value="경차"> <label for="compact" class="none_checkbox">경차</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="small" class="none"
								value="소형차"> <label for="small" class="none_checkbox">소형차</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="smiddle" class="none"
								value="준중형차"> <label for="smiddle" class="none_checkbox">준중형차</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="middle" class="none"
								value="중형차"> <label for="middle" class="none_checkbox">중형차</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="large" class="none"
								value="대형차"> <label for="large" class="none_checkbox">대형차</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="sports" class="none"
								value="스포츠카"> <label for="sports" class="none_checkbox">스포츠카</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="suv" class="none"
								value="suv"> <label for="suv" class="none_checkbox">suv</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="rv" class="none"
								value="rv"> <label for="rv" class="none_checkbox">rv</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="svan" class="none"
								value="경승합차"> <label for="svan" class="none_checkbox">경승합차</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="van" class="none"
								value="승합차"> <label for="van" class="none_checkbox">승합차</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="truck" class="none"
								value="트럭"> <label for="truck" class="none_checkbox">트럭</label>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_size" id="bus" class="none"
								value="버스"> <label for="bus" class="none_checkbox">버스</label>
						</div>

					</div>

					<!-- 제조사/모델 -->
					<h3 class="side_tit">제조사/모델</h3>
					<div class="car_box clfixed">
						<select name="car_Brand" id="car_Brand" class="select_box new_select_box" >
							<option selected value="" >제조사</option>
							<option value="10" >현대</option>
							<option value="11" >제네시스</option>
							<option value="12" >기아</option>
							<option value="13" >쉐보레</option>
							<option value="14" >르노삼성</option>
							<option value="15" >쌍용</option>
							
						</select> 
						<select name="car_Model" id="car_Model" class="select_box new_select_box" >
							<option selected value="">모델</option>
						</select> <select name="car_Detail" id="car_Detail" class="select_box new_select_box">
							<option selected value="">세부모델</option>
						</select>
					</div>

					<!-- 연식 -->
					<h3 class="side_tit">연식</h3>
					<div class="car_box car_year clfixed">
						<select name="car_Age_min" id="car_Age_min" class="select_box"
							>
							<option value="" selected>최소</option>
							<option value="2020">2020</option>
							<option value="2019">2019</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
						</select>

						<div class="wave">
							<p class="text-center">~</p>
						</div>

						<select name="car_Age_max" id="car_Age_max" class="select_box"
							>
							<option value="" selected>최대</option>
							<option value="2020">2020</option>
							<option value="2019">2019</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
						</select>
					</div>

					<!-- 주행거리 -->
					<h3 class="side_tit">주행거리</h3>
					<div class="car_box car_distance clfixed">
						<select name="car_distance_min" id="car_distance_min"
							class="select_box" >
							<option value="" selected>최소</option>
							<option value="10000">10,000km</option>
							<option value="20000">20,000km</option>
							<option value="30000">30,000km</option>
						</select>

						<div class="wave">
							<p class="text-center">~</p>
						</div>

						<select name="car_distance_max" id="car_distance_max"
							class="select_box">
							<option value="" selected>최대</option>
							<option value="10000">10,000km</option>
							<option value="20000">20,000km</option>
							<option value="30000">30,000km</option>

						</select>
					</div>

					<!-- 가격 -->
					<h3 class="side_tit">가격</h3>
					<div class="car_box car_price clfixed">
						<select name="car_price_min" id="car_price_min" class="select_box">
							<option value="" selected>최소</option>
							<option value="1000000">100만원</option>
							<option value="2000000">200만원</option>
							<option value="3000000">300만원</option>
						</select>

						<div class="wave">
							<p class="text-center">~</p>
						</div>

						<select name="car_price_max" id="car_price_max" class="select_box">
							<option value="" selected>최대</option>
							<option value="1000000">100만원</option>
							<option value="2000000">200만원</option>
							<option value="3000000">300만원</option>

						</select>
					</div>

					<!-- 색상 -->
					<h3 class="side_tit">색상</h3>
					<div class="car_box car_color clfixed">
						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="white" class="none"
								value="흰색"> <label for="white"
								class="none_checkbox_color">흰색</label>
							<div class="circle_2">
								<span style="background: #fff;"></span>
							</div>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="pearl" class="none"
								value="진주색"> <label for="pearl"
								class="none_checkbox_color">진주색</label>
							<div class="circle_2">
								<span style="background: ivory"></span>
							</div>

						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="black" class="none"
								value="검정색"> <label for="black"
								class="none_checkbox_color">검정색</label>
							<div class="circle_2">
								<span style="background: black"></span>
							</div>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="black_two"
								class="none" value="검정투톤"> <label for="black_two"
								class="none_checkbox_color">검정투톤</label>
							<div class="circle_2">
								<span
									style="background: linear-gradient(90deg, rgba(17, 17, 17, 1) 0%, rgba(17, 17, 17, 1) 49%, rgba(119, 119, 119, 1) 50%, rgba(119, 119, 119, 1) 100%);"></span>
							</div>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="mouse" class="none"
								value="쥐색"> <label for="mouse"
								class="none_checkbox_color">쥐색</label>
							<div class="circle_2">
								<span style="background: gray"></span>
							</div>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="silver" class="none"
								value="은색"> <label for="silver"
								class="none_checkbox_color">은색</label>
							<div class="circle_2">
								<span style="background: silver"></span>
							</div>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="silver_two"
								class="none" value="은색투톤"> <label for="silver_two"
								class="none_checkbox_color">은색투톤</label>
							<div class="circle_2">
								<span
									style="background: linear-gradient(90deg, rgba(194, 194, 194, 1) 0%, rgba(194, 194, 194, 1) 49%, rgba(119, 119, 119, 1) 50%, rgba(119, 119, 119, 1) 100%);"></span>
							</div>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="white_two"
								class="none" value="흰색투톤"> <label for="white_two"
								class="none_checkbox_color">흰색투톤</label>
							<div class="circle_2">
								<span
									style="background: linear-gradient(90deg, rgba(194, 194, 194, 1) 0%, rgba(194, 194, 194, 1) 49%, rgba(255, 255, 255, 1) 50%, rgba(255, 255, 255, 1) 100%);"></span>
							</div>
						</div>

						<div class="checkbox_wrap">
							<input type="checkbox" name="car_Color" id="silver_gray"
								class="none" value="은회색"> <label for="silver_gray"
								class="none_checkbox_color">은회색</label>
							<div class="circle_2">
								<span style="background: rgb(189, 184, 178)"></span>
							</div>
						</div>

						<!-- <div class="checkbox_wrap">
								<input type="checkbox" name="car_Color" id="" class="none" value="">
								<label for="" class="none_checkbox"></label>
							</div> -->
						<button class="more_btn" id="color_more" type="button">＋색상
							더보기</button>
					</div>

					<!-- 연료 -->
					<h3 class="side_tit">연료</h3>
					<div class="car_box car_fuel clfixed">
						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Fuel" id="gasoline" class="none"
								value="가솔린"> <label for="gasoline" class="none_checkbox">휘발유</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Fuel" id="diesel" class="none"
								value="디젤"> <label for="diesel" class="none_checkbox">디젤</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Fuel" id="lpg" class="none"
								value="LPG"> <label for="lpg" class="none_checkbox">LPG</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Fuel" id="gasLpg" class="none"
								value="가솔린+LPG"> <label for="gasLpg"
								class="none_checkbox">가솔린+LPG</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Fuel" id="gasElec" class="none"
								value="가솔린+전기"> <label for="gasElec"
								class="none_checkbox">가솔린+전기</label>
						</div>

					</div>

					<!-- 변속기 -->
					<h3 class="side_tit">변속기</h3>
					<div class="car_box car_gear clfixed">
						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Gear" id="auto" class="none"
								value="오토"> <label for="auto" class="none_checkbox">오토</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Gear" id="stick" class="none"
								value="수동"> <label for="stick" class="none_checkbox">수동</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Gear" id="semi_auto"
								class="none" value="세미오토"> <label for="semi_auto"
								class="none_checkbox">세미오토</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Gear" id="cvt" class="none"
								value="cvt"> <label for="cvt" class="none_checkbox">cvt</label>
						</div>

					</div>

					<!-- 옵션 -->
					<h3 class="side_tit">옵션</h3>
					<div class="car_box car_option clfixed">
						<div class="checkbox_wrap_2">
							<input type="checkbox" name="opt_idx" id="navi" class="none"
								value="410"> <label for="navi" class="none_checkbox">내비게이션</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="opt_idx" id="sun" class="none"
								value="301"> <label for="sun" class="none_checkbox">선루프</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="opt_idx" id="leather_seat"
								class="none" value="201"> <label for="leather_seat"
								class="none_checkbox">가죽시트</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="opt_idx" id="hot_seat" class="none"
								value="204"> <label for="hot_seat" class="none_checkbox">열선시트</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="opt_idx" id="hed" class="none"
								value="302"> <label for="hed" class="none_checkbox">HED/LED라이트</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="opt_idx" id="smart_key" class="none"
								value="405"> <label for="smart_key"
								class="none_checkbox">스마트키</label>
						</div>

						<button class="more_btn" id="option_more" type="button">＋옵션
							더보기</button>
					</div>

					<!-- 성능점검 -->
					<h3 class="side_tit">성능점검</h3>
					<div class="car_box car_confirm clfixed">
						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_test" id="car_test_y"
								class="none" value="유"> <label for="car_test_y"
								class="none_checkbox">성능점검 유</label>
						</div>
						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_test" id="car_test_n"
								class="none" value="무"> <label for="car_test_n"
								class="none_checkbox">성능점검 무</label>
						</div>
					</div>

					<!-- 인승 -->
					<h3 class="side_tit">인승</h3>
					<div class="car_box car_seater clfixed">
						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Seat" id="car_Seat4"
								class="none" value="4"> <label for="car_Seat4"
								class="none_checkbox">4인승</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Seat" id="car_Seat5"
								class="none" value="5"> <label for="car_Seat5"
								class="none_checkbox">5인승</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Seat" id="car_Seat7"
								class="none" value="7"> <label for="car_Seat7"
								class="none_checkbox">7인승</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Seat" id="car_Seat9"
								class="none" value="9"> <label for="car_Seat9"
								class="none_checkbox">9인승</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Seat" id="car_Seat11"
								class="none" value="11"> <label for="car_Seat11"
								class="none_checkbox">11인승</label>
						</div>

						<div class="checkbox_wrap_2">
							<input type="checkbox" name="car_Seat" id="car_Seat15"
								class="none" value="15"> <label for="car_Seat15"
								class="none_checkbox">15인승</label>
						</div>
					</div>
				</form>
			</aside>

		</div>

	</div>

</div>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		//popup
		$('.popup_exit').click(function() {
			$('#popup_board_option').hide(0);
			$('#popup_board_color').hide(0);
		})

		$('#option_more').click(function() {
			$('#popup_board_option').show(0);
		})

		$('#color_more').click(function() {
			$('#popup_board_color').show(0);
		})

		//side_mobile
		$('#side_open').click(function() {
			$('.sidebox').animate({
				width : "show"
			});
			$('footer').hide(0);
		})
		$('.side_exit').click(function() {
			$('.sidebox').animate({
				width : "hide"
			});
			$('footer').show(0);
		})

		$(window).resize(function() {
			var width = window.outerWidth;
			if (width >= 768) {
				$('.sidebox').css('display', 'block');
			}
		})

		// checkbox
		$("input:checkbox").click(function(e) {

			if ($(this).prop('checked')) {
				$(this).parent().addClass("selected");
			} else {
				$(this).parent().removeClass("selected");
			}
			/* c();
			if ($(this).is('.b')) {
				//$(this).parent().siblings().hide();
				d($(this).val())
			}

			if ($(this).is('.m')) {
				alert($(this).parent().html());
				detail($(this).val())
				return false;
			} */

		});

		$('.reset_btn').click(function() {
			$("input:checkbox").parent().removeClass("selected");
		})

	});//$(function()) end

	//차량검색 ajax
	$("#car_number").change(function() {
		$('#table').html('');
		var search = $("#car_number").val();
		if (!search) {
			alert("검색어를 입력하세요");
			$("#car_Num").focus();
			return;
		}
		$.ajax({
			type : 'get',
			url : 'carsearch.do?search=' + search,
			dataType : 'html',
			cache : false,
			success : function(res) {
				$('#table').html(res);
			},
			error : function(err) {
				alert('error: ' + err.status);
			}
		})
	})

	//차량검색 페이징처리
	var pageC = function(i) {
		$.ajax({
			type : 'get',
			url : 'carsearch.do?cpage=' + i,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//$('#table2').hide();
				$('#table').html(res);
			},
			error : function(err) {
				alert('error:' + err.status);
			}
		})
	}
	var prevB = function(i) {
		$.ajax({
			type : 'get',
			url : 'carsearch.do?cpage=' + i,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//$('#table2').hide();
				$('#table').html(res);
			},
			error : function(err) {
				alert('error:' + err.status);
			}
		})
	}
	var nextB = function(i) {
		$.ajax({
			type : 'get',
			url : 'carsearch.do?cpage=' + i,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//$('#table2').hide();
				$('#table').html(res);
			},
			error : function(err) {
				alert('error:' + err.status);
			}
		})
	}

	//차사이즈 페이지 처리
	var pageC2 = function(i) {
		var search = $('#car_search').serialize();
		$.ajax({
			type : 'get',
			url : 'carsearchSize.do?cpage=' + i + '&' + search,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//$('#table2').hide();
				$('#table').html(res);
			},
			error : function(err) {
				alert('error:' + err.status);
			}
		})
	}
	var prevB2 = function(i) {
		var search = $('#car_search').serialize();
		$.ajax({
			type : 'get',
			url : 'carsearchSize.do?cpage=' + i + '&' + search,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//$('#table2').hide();
				$('#table').html(res);
			},
			error : function(err) {
				alert('error:' + err.status);
			}
		})
	}
	var nextB2 = function(i) {
		var search = $('#car_search').serialize();
		$.ajax({
			type : 'get',
			url : 'carsearchSize.do?cpage=' + i + '&' + search,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//$('#table2').hide();
				$('#table').html(res);
			},
			error : function(err) {
				alert('error:' + err.status);
			}
		})
	}

	//사이드바 이벤트 처리 
	$('.none').click(function(){
		c();
	})
	$('.select_box').change(function() {
		//alert($(this).val())
		c();
	})
	
	 $(document).on('change','select',function(){
		//alert($(this).val());
		if($(this).is('#car_Brand')){
			$('#car_Model').html('<option selected value="">모델</option>');
			$('#car_Detail').html('<option selected value="">세부모델</option>');
			model($(this).val());
		}else if($(this).is('#car_Model')){
			//alert($(this).val())
			$('#car_Detail').html('<option selected value="">세부모델</option>');
			detail($(this).val());
		}
	}) 
	
	
	/* $('#B_Code_wrap').find('li').click(function(e){
		alert("addf");
		c();
		var i=$(this).find('input').val();
		$(this).siblings().hide()
		d(i);
		e.stopPropagation();
		e.preventDefault();
		return false; 
	})
	
	 //$('#M_Code_wrap').find('li').click(function(e){
	$(document).on('click','#M_Code_wrap>li',function(e){
		//c();
		alert("1234");
		var m_code=$(this).find('input').val();
		$(this).siblings().hide()
		detail(m_code);
		 e.stopPropagation();
		 e.preventDefault(); 
		return false;
	}) */

	function c() {
		var search = $('#car_search').serialize();
		console.log(search);
		$.ajax({
			type : 'get',
			url : 'carsearchSize.do?' + search,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//alert(JSON.stringify(res))
			
				//console.log(res)
				$('#table').html(res);
			},
			error : function(err) {
				alert('error: ' + err.status);
			}
		})
	}

	
	
	function model(b_code) {
		$.ajax({
			type : 'get',
			url : 'model.do?B_Code=' + b_code,
			dataType : 'html',
			cache : false,
			success : function(res) {
				//$('#car_model').find('#M_Code_wrap>li').last().insert(res);
				$("#car_Model").html(res);
			},
			error : function(err) {
				alert('error: ' + err.status);
			}
		})
	}

	function detail(m_code){
		$.ajax({
			type : 'get',
			url:'detail.do?M_Code=' + m_code,
			dataType:'html',
			cache:false,
			success:function(res){
				$('#car_Detail').html(res);
			},
			error : function(err){
				alert('error: '+err.status);
			}
			
		})
	} 
</script>

<form id='frm'></form>


<c:import url="/foot" />