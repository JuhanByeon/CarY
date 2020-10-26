<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ctx = request.getContextPath();
%>
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
.container3_1{
 width: 90%;
            margin: 0 auto;
            padding: 10px 1%;
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
        .container3_1{
        max-width:480px;
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
            padding: 30px 0;
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
    
    	// 정규식 메타 검사 =========================================================== //
    	
	    // 아이디 정규식 메타 검사.
		function isUserid(obj) {
			var val = obj.value;
			var pattern = new RegExp(/^[a-z0-9-_]{5,15}$/);
			var b = pattern.test(val);
			return b;
		}
	    
	    // 비밀번호 정규식 메타 검사.
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
	    
	    
	    // 우편번호 검색 창
        function openPost() {
            win = window.open("postCheck.do", "postCheck", "width=500, height=500, left=100, top=100");
        }
        
        var idCheck = true;
        function isDuplicate(){
        	var userid = $('#userid').val()
				$.ajax({
					type:'get',
					url:'idCheck?userid='+userid,
					async:false,
					dataType:'html',
					cache:false,
					success:function(res) {
						alert(res);
						/* if($(res).text() == "이미 있는 아이디 입니다.") {
							f.userid.focus();
							idCheck = false;
							$("#useridC").html(res);
						} else if($(res).text() == "사용 가능한 아이디 입니다."){
							idCheck = true;
							$("#useridC").html(res);
						}*/
					},
					error:function(err) {
						alert('error: '+err.statys);
					}
				})
				// alert(idCheck);
				return idCheck;
        }

        
        // submit 시 유효성 체크 ======================================================================= //
        function check() {
            // 아이디, 비밀번호
            if (!f.userid.value) {
            	$('#useridC').html('아이디를 입력해 주세요.').css({
					'color': 'red'		   	,
					'margin-bottom':'8px','display':'block'	
				});
                f.userid.focus();
                return;
            }
            
            if(!isUserid(f.userid)) {
                f.userid.focus();
            	$('#useridC').html('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.').css({
					'color': 'red'		   	,
					'margin-bottom':'8px','display':'block'	
				});
                return;
            } else {
            	var isCheck = isDuplicate();
            	//alert(isCheck);
            	if (isCheck == false) {
            		f.userid.focus();
            		return;
            	} 
            }
            
            if (!f.pwd.value) {
                $('#pwdC').html('비밀번호를 입력해 주세요.').css({
					'color': 'red'		   	,
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
            	$("#pwd2C").html('비밀번호 확인을 입력해 주세요.').css({
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
            
            if (!f.name.value) {
            	$('#nameC').html('이름을 입력하세요').css({
					'color': 'red'		   	,
					'margin-bottom':'8px','display':'block'
                });
                f.name.focus();
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
            
            if(!f.sex.value) {
            	$('#sexC').html('성별을 선택해 주세요.').css({
					'color': 'red'		   	,
					'margin-bottom':'8px','display':'block'
                });
                f.sex.focus();
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
        
        //max-length check
        function maxLengthCheck(object) {
            if (object.value.length > object.maxLength) {
                object.value = object.value.slice(0, object.maxLength);
            }
        }
        
        
        
// 로그인페이지 입력값 검사	
	$(function(){
		// 아이디 항시 체크 ////////////////////////////////////////////
		
		$('#userid').focusout(function(){
			if (!isUserid(f.userid)){
				$('#useridC').html('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.').css({
					'color': 'red'		   	,
					'margin-bottom':'8px','display':'block'	
				});
				
			} else if(isUserid(f.userid)) {
		    	var userid = $(this).val()
   				$.ajax({
   					type:'get',
   					url:'idCheck.do?userid='+userid,
   					dataType:'html',
   					cache:false,
   					success:function(res) {
   						$("#useridC").html(res);	
   					},
   					error:function(err) {
   						alert('error: '+err.statys);
   					}
   				})
		    } 
	    })
	    
	    // 비밀번호 항시 체크 ////////////////////////////////////////////////
	    
		$('#pwd').focusout(function(){
			if(!isPwd(f.pwd)) {
				$("#pwdC").html('8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.').css({
					'color': 'red'		   	,
					'margin-bottom':'8px','display':'block'	
				});
				return;
				
			} else if(isPwd(f.pwd)) {
				$("#pwdC").html('옳바른 비밀번호 형식 입니다.').css({
					'color': 'green',
					'margin-bottom':'8px','display':'block'	
				});
			}
		})
		
		// 비밀번호 1차 2차 확인 체크 //////////////////////////////////////////////
		
		
		$('#pwd2').focusout(function(){
			if (f.pwd.value != f.pwd2.value) {
				$("#pwd2C").html('비밀번호와 비밀번호 확인이 일치하지 않습니다.').css({
					'color': 'red',
					'margin-bottom':'8px','display':'block'	
				});
				return;
				
			} else if(f.pwd.value == f.pwd2.value) {
				$("#pwd2C").html('비밀번호와 비밀번호 확인이 일치 합니다.').css({
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


    </script>
</head>

<body>
    <div class="wrap-bg">
        <div class="container2" style="background: #f5f6f7 !important;">
            <h1><a href="<%=ctx%>/index.do">LOGO 위치</a></h1>
        </div>
        <form name="f" action="signupEnd" method="post">


            <div class="label m-3">
                <div class="col-md-3 offset-md-4">아이디</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="text" name="member_id" id="userid" placeholder="User ID" class="form-control">
                    <!-- hidden data ---------------------- -->
                    <input type="hidden" name="flag" value="false">
                    <!-- ---------------------------------- -->

                </div>
            </div>
                    <div class="m-5 container3_1" style="font-size:0.8rem;" id="useridC"></div>


            <div class="label m-3">
                <div class="col-md-3 offset-md-4">비밀번호</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="password" name="member_pwd" id="pwd" placeholder="Password" class="form-control">
                </div>
            </div>
            	
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="pwdC"></div>


            <div class="label m-3">
                <div class="col-md-3 offset-md-4">비밀번호 확인</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="password" name="pwd2" id="pwd2" placeholder="Password" class="form-control">
                </div>
            </div>
            
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="pwd2C"></div>

            <div class="label m-3">
                <div class="col-md-3 offset-md-4">이름</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="text" name="member_name" id="name" placeholder="Name" class="form-control">
                </div>
            </div>
            
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="nameC"></div>

            <div class="label m-3">
                <div class="col-md-4 offset-md-4">생년월일</div>
            </div>

            <div class="birth m-3">
                <div class="col-md-4 offset-md-4">
                    <div class="birth-div">
                        <input type="number" name="member_year" id="year" placeholder="년" maxlength="4"
                            oninput="maxLengthCheck(this)">
                    </div>
                    <div class="birth-div">
                        <input type="number" name="member_month" id="month" placeholder="월" maxlength="2"
                            oninput="maxLengthCheck(this)">
                    </div>
                    <div class="birth-div-last">
                        <input type="number" name="member_day" id="day" placeholder="일" maxlength="2"
                            oninput="maxLengthCheck(this)">
                    </div>
                </div>

            </div>
            
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="birthC"></div>

            <div class="label m-3">
                <div class="col-md-3 offset-md-4">성별</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <select name="member_sex" id="sex" class="form-control">
                        <option value="" selected disabled>성별</option>
                        <option value="남자">남자</option>
                        <option value="여자">여자</option>
                    </select>
                </div>
            </div>
            
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="sexC"></div>

            <div class="label m-3">
                <div class="col-md-3 offset-md-4">이메일(선택)</div>
            </div>
            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="email" name="member_email" id="email" placeholder="Email" class="form-control">
                </div>
            </div>

            <div class="label m-3">
                <div class="col-md-3 offset-md-4">연락처</div>
            </div>

            <div class="container2">
                <div class="col-md-4 offset-md-4">
                    <div class="hp-box">
                        <input type="number" name="member_phone" id="hp" placeholder="HP" maxlength="11"
                            oninput="maxLengthCheck(this)">
                    </div>
                    <div class="hp-bt">
                        <button class="btn hp-btn" type="button">인증번호 받기</button>
                    </div>

                </div>
            </div>
            
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="hpC"></div>

            <div class="container3 hp-m">
                <div class="col-md-4 offset-md-4">
                    <input type="number" name="admit" id="admit" placeholder="인증번호 입력" maxlength="4"
                        oninput="maxLengthCheck(this)">
                </div>
            </div>

            <div class="label m-3">
                <div class="col-md-3 offset-md-4">우편번호</div>
            </div>

            <div class="container2">
                <div class="col-md-4 offset-md-4">
                    <div class="hp-box">
                        <input type="text" name="member_post" id="post" maxlength="5" placeholder="Post" class="form-control">
                    </div>
                    <div class="hp-bt">
                        <button type="button" onclick="openPost()" class="hp-btn">우편번호 찾기</button>
                    </div>

                </div>
            </div>
            
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="postC"></div>

            <div class="label m-3">
                <div class="col-md-3 offset-md-4">주소</div>
            </div>

            <div class="container3">
                <div class="col-md-4 offset-md-4">
                    <input type="text" name="member_addr1" id="addr1" placeholder="Address1" class="form-control">
                </div>
            </div>


            <div class="container3 hp-m">
                <div class="col-md-4 offset-md-4">
                    <input type="text" name="member_addr2" id="addr2" placeholder="Address2" class="form-control">
                </div>
            </div>
            	
            	<div class="m-5 container3_1" style="font-size:0.8rem;" id="addr2C"></div>

            <div class="label"></div>
            <div class="btn-container m-3">
                <div class="col-md-12 text-center">
                    <button type="button" class="join-btn" onclick="check()">가입하기</button>
                </div>
            </div>
        </form>
        <div class="label"></div>
        <div class="container2">
            <nav class="fNav">
                <ul>
                    <li><a href="#">저작권정책</a></li>
                    <li><a href="#">개인정보처리방침 </a></li>
                    <li class="last"><a href="#">고객센터</a></li>
                </ul>
            </nav>
        </div>
	</div>
	
</body>

</html>

