<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/top" />

<style>
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

.board_tit {
    margin-bottom: 8px;
    font-size: 18px;
    font-weight: bold;
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
input, textarea{
	width: 100%;
}


 input:active,
        input:focus,
        textarea:active,
        textarea:focus {
            outline: none !important;
            border: 1px solid #e66b27 !important;
        }



@media all and (min-width:768px) {
    .btn_group {
        max-width: 768px;
        margin: 0 auto;
    }

}

.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
}

.checks {position: relative;}

.checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
}
.checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: '';
  display: inline-block;
  width: 21px;  /* 체크박스의 너비를 지정 */
  height: 21px;  /* 체크박스의 높이를 지정 */
  line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="checkbox"] + label:active:before,
.checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

.checks input[type="checkbox"]:checked + label:before {  /* 체크박스를 체크했을때 */ 
  content: '\2714';  /* 체크표시 유니코드 사용 */
  color: #99a1a7;
  text-shadow: 1px 1px #fff;
  background: #e9ecee;
  border-color: #adb8c0;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1);
}

.checks.small input[type="checkbox"] + label {
  font-size: 12px;
}

.checks.small input[type="checkbox"] + label:before {
  width: 17px;
  height: 17px;
  line-height: 17px;
  font-size: 11px;
}

.checks.etrans input[type="checkbox"] + label {
  padding-left: 30px;
}
.checks.etrans input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #6cc0e5;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}

.checks.etrans input[type="checkbox"]:checked + label:before {
  position: absolute;
  content: "";
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity:1; 
  background: transparent;
  border-color:transparent #6cc0e5 #6cc0e5 transparent;
  border-top-color:transparent;
  border-left-color:transparent;
  -ms-transform:rotate(45deg);
  -webkit-transform:rotate(45deg);
  transform:rotate(45deg);
}

.no-csstransforms .checks.etrans input[type="checkbox"]:checked + label:before {
  /*content:"\2713";*/
  content: "\2714";
  top: 0;
  left: 0;
  width: 21px;
  line-height: 21px;
  color: #6cc0e5;
  text-align: center;
  border: 1px solid #6cc0e5;
}




</style>

 <section class="container" style="margin-top: 60px;">
        <form action="cswriteEnd" id="cs" method="POST">
            <h1 class="board_tit">문의사항을 입력해주세요</h1>

            <div class="input_box">
                <p class="input_tit">제목</p> 
                <input type="text" name="cs_tit" style="text-align: left !important;padding-left: 210px !important;">
            </div>
            <div class="input_box">
            	
                <p class="input_tit" style="margin:10px;">
	                <div class="checks etrans">
						<input type="checkbox" id="ex_chk3"> 
						<label for="ex_chk3">해당 항목을 리스트에 표시합니다</label> 
					</div>
				</p> 
                
            </div>
			

            <div class="input_box">
                <textarea name="cs_content" id="content" cols="30" rows="30"></textarea>
            </div>
            <div class="btn_group">
                <button type="button" class="btn btn_back" onclick="goback()">취소</button>
                <button type="submit" class="btn btn_next">접수</button>
            </div>
            
            
            <!-- <input type="hidden" name="" value=""/> -->
            <!-- <input type="hidden" name="" value=""/> -->
        </form>
    </section>

    <script>
        function goback() {
            window.history.back();
        }
    </script>



<c:import url="/foot" />