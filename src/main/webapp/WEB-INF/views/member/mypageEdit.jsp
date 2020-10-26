<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String ctx = request.getContextPath();
%>
<c:import url="/top" />


<style>
nav ul, li {
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

::-moz-input-placeholder, ::-moz-textarea-placeholder {
	color: #999;
}

::-webkit-input-placeholder, ::-webkit-textarea-placeholder {
	color: #999;
}

form {
	width: 100%;
	display: block;
}

input, select {
	width: 100%;
	height: 30px;
	border: none;
}

/* 공통 / 모바일 css */
#idMsg, #pwdMsg, #pwdMsg2, #birthC, #nameC, #hpC, #postC, #addr2C {
	padding-top: 7px;
	width: 480px;
	margin: 0 auto;
	font-size: 12px;
	font-weight: normal;
	color: red;
}

.text-success {
	color: green !important;
}

.container3 {
	width: 90%;
	height: 50px;
	margin: 0 auto;
	padding: 10px 14px;
	outline: 1px solid gray;
	box-sizing: border-box;
	background: #fff;
}

input:focus, select:focus {
	outline: 1px solid #333;
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
	background-color: #999;
	box-sizing: border-box;
	color: #fff;
	border: none;
	font-size: 18px;
}

.container2, .btn-container {
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
	padding: 10px 14px;
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
	padding: 10px 14px;
	background: #fff;
}

.hp-m {
	margin-top: 18px;
}

.hp-box {
	width: 77%;
	margin-right: 2%;
	box-sizing: border-box;
	padding: 10px 14px;
	outline: 1px solid gray;
	float: left;
}

.hp-btn {
	width: 21%;
	float: right;
	height: 50px;
	background: #999;
	border: none;
	color: #fff;
}

.fNav, footer p {
	float: left;
	width: 100%;
	height: 50px;
	line-height: 50px;
	text-align: center;
	padding: 30px 0;
}

.fNav li {
	display: inline-block;
	padding-right: 10px;
}

.fnav li a {
	color: #999;
	font-size: 14px;
}

a {
	text-decoration: none;
}

.fNav li:after {
	content: '|';
	font-size: 14px;
	position: relative;
	left: 7px;
	top: -2px;
	color: #999;
}

.fNav .last {
	padding-right: 0;
}

.fNav .last:after {
	content: '';
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
</style>

<script type="text/javascript">

	/////// 정규식 메타 검사 ///////////////////////////////////////////////////////////////
	//비밀번호 정규식 메타 검사.
	function isPwd(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^[A-Ba-z0-9\W]{8,16}$/);
		var b = pattern.test(val);
		return b;
	}
	
	// 이름 정규식 메타검사
	function isName(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^[가-힣a-sA-Z]+$/);
		var b = pattern.test(val);
		return b;
	}
	
	// 생년월일 정규식 메타검사
	function isYear(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^[1-2]{1}[0-9]{3}$/);
		var b = pattern.test(val);
		return b;
	}
	function isMonth(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^(0?[1-9]|1[012])$/);
		var b = pattern.test(val);
		return b;
	}
	function isDay(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^(0?[1-9]|[12][0-9]|3[0|1])$/);
		var b = pattern.test(val);
		return b;
	}
	
	// 핸드폰번호 정규식 메타검사
	function isHp(obj) {
		var val = obj.value;
		var pattern = new RegExp(/^(01[0|1|6|7|8|9]{1}?)-?([0-9]{4})-?([0-9]{4})$/);
		var b = pattern.test(val);
		
		return b;
	}
	///////////////////////////////////////////////////////////////////////////////////////

	    // 우편번호 검색 창
    function openPost() {
        win = window.open("postCheck", "postCheck", "width=500, height=500, left=700, top=100");
    }
	
	function check() {
        if (!f.pwd.value) {
            $('#pwdMsg').html('비밀번호를 입력해 주세요.').css({
				'color': 'red',
				'margin-bottom':'8px','display':'block'
            });
            f.pwd.focus();
            return;
        }
        
        if (!isPwd(f.pwd)) {
        	f.pwd.focus();
        	return;
        } 
        
        if (!f.pwd2.value) {
        	$("#pwdMsg2").html('비밀번호 확인을 입력해 주세요.').css({
				'color': 'red',
				'margin-bottom':'8px','display':'block'	
			});
            f.pwd2.focus();
            return;
        }
        
        if (f.pwd.value != f.pwd2.value) {
            f.pwd2.focus();
            return;
        }
        
        if (!isName(f.name)) {
        	f.name.focus();
        	return;
        } 
        
        if (!f.year.value || !isYear(f.year)) {
        	f.year.focus();
        	$('#birthC').html('태어난 년도 4자리를 정확하게 입력하세요.').css({
				'color': 'red'		   	,
				'margin-bottom':'8px','display':'block'
            });
            return;
        }
        
        if (!f.month.value || !isMonth(f.month)) {
            f.month.focus();
        	$('#birthC').html('태어난 월을 정확히 입력하세요.').css({
				'color': 'red'		   	,
				'margin-bottom':'8px','display':'block'
            });
            return;
        }
        
        if (!f.day.value || !isDay(f.day)) {
            f.day.focus();
        	$('#birthC').html('태어난 일을 정확히 입력하세요.').css({
				'color': 'red'		   	,
				'margin-bottom':'8px','display':'block'
            });
            return;
        }
        
        
        if(!f.hp.value) {
        	$('#hpC').html('연락처를 입력해 주세요.').css({
				'color': 'red'		   	,
				'margin-bottom':'8px','display':'block'
            });
            f.hp.focus();
            return;
        }
        
        if (!isHp(f.hp)) {
        	f.hp.focus();
        	return;
        } 
        
        if(!f.post.value) {
        	$('#postC').html('우편 번호를 검색해 주세요.').css({
				'color': 'red'		   	,
				'margin-bottom':'8px','display':'block'
            });
            f.postC.focus();
            return;
        }
      
        if(!f.addr2.value) {
        	$('#addr2C').html('나머지 주소를 입력해 주세요.').css({
				'color': 'red'		   	,
				'margin-bottom':'8px','display':'block'
            });
            f.addr2.focus();
            return;
        }
        
		f.submit();

	}
	
	// 수정 페이지 입력값 검사
	$(function(){
	    // 비밀번호 항시 체크 ////////////////////////////////////////////////
	    
		$('#pwd').focusout(function(){
			if(!isPwd(f.pwd)) {
				$("#pwdMsg").html('8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.').css({
					'color': 'red'		   	,
					'margin-bottom':'8px','display':'block'	
				});
				return;
				
			} else if(isPwd(f.pwd)) {
				$("#pwdMsg").html('옳바른 비밀번호 형식 입니다.').css({
					'color': 'green',
					'margin-bottom':'8px','display':'block'	
				});
			}
		})
		
		// 비밀번호 1차 2차 확인 체크 //////////////////////////////////////////////
		
		
		$('#pwd2').focusout(function(){
			if (f.pwd.value != f.pwd2.value || !f.pwd2.value) {
				$("#pwdMsg2").html('비밀번호와 비밀번호 확인이 일치하지 않습니다.').css({
					'color': 'red',
					'margin-bottom':'8px','display':'block'	
				});
				return;
				
			} else if(f.pwd.value == f.pwd2.value) {
				$("#pwdMsg2").html('비밀번호와 비밀번호 확인이 일치 합니다.').css({
					'color': 'green',
					'margin-bottom':'8px','display':'block'	
				});
			}
		})
		
		// 이름 형식 체크 //////////////////////////////////////////////
		$('#name').focusout(function() {
			if(!isName(f.name)) {
				$('#nameC').html('한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)').css({
					'color': 'red',
					'margin-bottom':'8px','display':'block'	
				});
				return;
				
			} else if(isName(f.name)) {
				$('#nameC').html('');
			}
		})
		
		// 생년월일 체크 ///////////////////////////////////////////////
		
	    $('#year').focusout(function(){
	    	if(!isYear(f.year)) {
	    		$('#birthC').html('태어난 년도 4자리를 정확하게 입력하세요.').css({
					'color': 'red',
					'margin-bottom':'8px','display':'block'	
				});
				return;
	    	} else if(isYear(f.year)) {
	    		$('#birthC').html('');
	    	}
	    })
	    
	    $('#month').focusout(function(){
	    	if(!isMonth(f.month)) {
	    		$('#birthC').html('태어난 월을 정확히 입력하세요.').css({
					'color': 'red',
					'margin-bottom':'8px','display':'block'	
				});
				return;
	    	} else if(isMonth(f.month)) {
	    		$('#birthC').html('');
	    	}
	    })
	    
	    $('#day').focusout(function(){
	    	if(!isDay(f.day)) {
	    		$('#birthC').html('태어난 일을 정확히 입력하세요.').css({
					'color': 'red',
					'margin-bottom':'8px','display':'block'	
				});
				return;
	    	} else if(isDay(f.day)) {
	    		$('#birthC').html('');
	    	}
	    })
	    
	 	// 핸드폰 번호 체크 ////////////////////////////////////////////////   
	   
	 	$('#hp').focusout(function(){
	    	if(!isHp(f.hp)) {
	    		$('#hpC').html('형식에 맞지 않습니다. ("-" 없이 입력해 주세요.)').css({
					'color': 'red',
					'margin-bottom':'8px','display':'block'	
				});
				return;
	    	} else if(isHp(f.hp)) {
	    		$('#hpC').html('');
	    	}
	    })
	})
	
	//max-length check
	function maxLengthCheck(object) {
		if (object.value.length > object.maxLength) {
			object.value = object.value.slice(0, object.maxLength);
		}
	}
	

</script>

<div class="container">
<div class="mypage_tit cfixed">
	<h1 class="h1_tit">마이페이지 - 회원 정보 수정하기</h1>
</div>
</div>

<div class="wrap-bg cfixed" style="margin-top: 80px;">
	<form name="f" id="f" action="<%=ctx%>/myPageEditEnd" method="POST">
		<!-- onsubmit="return check()" -->
	

		<div class="label">비밀번호</div>
		<div class="container3">
			<input type="password" name="member_pwd" id="pwd"
				placeholder="Password">
		</div>
		<p id="pwdMsg"></p>
	

		<div class="label">비밀번호 확인</div>
		<div class="container3">
			<input type="password" name="pwd2" id="pwd2"
				placeholder="Password">
		</div>
		<p id="pwdMsg2"></p>

		<div class="label">이름</div>
		<div class="container3">
			<input type="text" name="member_name" id="name" placeholder="Name" value="${member.member_name}">
		</div>
		<p id="nameC"></p>

		<div class="label">생년월일</div>

		<div class="birth">
			<div class="birth-div">
				<input type="number" name="member_year" id="year" placeholder="년" value="${member.member_year}"
					maxlength="4" oninput="maxLengthCheck(this)">
			</div>
			<div class="birth-div">
				<input type="number" name="member_month" id="month" placeholder="월" value="${member.member_month}"
					maxlength="2" oninput="maxLengthCheck(this)">
			</div>
			<div class="birth-div-last">
				<input type="number" name="member_day" id="day" placeholder="일" value="${member.member_day}"
					maxlength="2" oninput="maxLengthCheck(this)">
			</div>

		</div>
		<p id="birthC"></p>

		<div class="label">성별</div>
		<div class="container3">
			<select name="member_sex" id="sex">

				<option value="남자" <c:if test="${member.member_sex eq '남자'}"> selected </c:if>>남자</option>
				<option value="여자" <c:if test="${member.member_sex eq '여자'}"> selected </c:if>>여자</option>
			</select>
		</div>

		<div class="label">이메일</div>
		<div class="container3">
			<input type="email" name="member_email" id="email" placeholder="Email" value="${member.member_email}">
		</div>

		<div class="label">연락처</div>

		<div class="container2">
			<div class="hp-box">
				<input type="text" name="member_phone" id="hp" placeholder="HP"
					maxlength="11" oninput="maxLengthCheck(this)" value="${member.member_phone}">
			</div>
			<div class="hp-bt">
				<button class="btn hp-btn" type="button">인증번호 받기</button>
			</div>
		</div>
		<p id="hpC"></p>

		<div class="container3 hp-m">
			<input type="number" name="admit" id="admit" placeholder="인증번호 입력"
				maxlength="4" oninput="maxLengthCheck(this)">
		</div>

		<div class="label">
			<div class="col-md-3 offset-md-4">우편번호</div>
		</div>

		<div class="container2">
			<div class="hp-box">
				<input type="number" name="member_post" id="post" maxlength="5"
					placeholder="Post" value="${member.member_post}">
			</div>
			<div class="hp-bt">
				<button type="button" onclick="openPost()" class="hp-btn">우편번호
					찾기</button>
			</div>
		</div>
		<p id="postC"></p>

		<div class="label">주소</div>

		<div class="container3">
			<input type="text" name="member_addr1" id="addr1" placeholder="Address1" value="${member.member_addr1}">
		</div>


		<div class="container3 hp-m">
			<input type="text" name="member_addr2" id="addr2" placeholder="Address2" value="${member.member_addr2}">
		</div>
		<p id="addr2C"></p>

		
		<div class="label"></div>
		<div class="btn-container cfixed">
			<button type="button" class="join-btn" onclick="check()">회원 정보 수정</button>
		</div>
	</form>
	<div class="label"></div>

</div>
<div style="margin-top: 150px;"></div>

<hr class="divider" />

<c:import url="/foot" />