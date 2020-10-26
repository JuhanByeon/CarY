<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>

 <section class="container" style="margin-top: 60px;">
        <form action="cseditEnd" name="cs" id="cs" method="GET">
            <h1 class="board_tit">문의사항을 수정해주세요</h1>

            <div class="input_box">
                <p class="input_tit">제목</p>
                <input type="text" name="title" style="text-align: left !important;padding-left: 210px !important;" value="${cs.cs_tit}">
            </div>

            <!-- <div class="input_box">
                <p class="input_tit">성능점검 기록부</p>
                <input type="file" name="price">
            </div> -->

            <div class="input_box">
                <textarea name="content" id="content" cols="30" rows="30">${cs.cs_content}</textarea>
            </div>

            <div class="btn_group">
                <button type="button" class="btn btn_back" onclick="goback()">취소</button>
                <button class="btn btn_next">수정</button>
            </div>
            
            
            <input type="hidden" name="cs_idx" value="${cs.cs_idx}"/>
            <!-- <input type="hidden" name="" value=""/> -->
        </form>
    </section>

    <script>
        function goback() {
            window.history.back();
        }
       
    </script>



<c:import url="/foot" />