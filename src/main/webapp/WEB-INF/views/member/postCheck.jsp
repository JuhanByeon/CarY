<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 우편번호 작은창 -->

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>

	$(function(){
		$('div[style]').html("도로명, 건물명 또는 지번 중 편한 방법으로 검색하세요.<br>"
		+"예) 건물명 : 방배동 우성아파트<br>"+
		"도로명 : 테헤란로 152<br>지역번 : 역삼동 737<br>");
	})
	
	$(function(){
		$('#roadName').on('keydown', function(key){
			var str = $(this).val();
			//alert(str);
			if (key.keyCode == 13) {
				$.ajax({
					type:'get',
					url:'postCheckEnd.do?roadName='+str,
					dataType:'html',
					cache:false,
					success:function(res) {
						//alert(res);
						$('#postResult').html(res);
					},
					error:function(err) {
						alert('error: '+err.status);
					}
				})
			}
		})
	})
	
	var showNextPage = function(str, str2) {
		$.ajax({
			type:'get',
			url:'postCheckEnd.do?cpage='+str+'&roadName='+str2,
			dataType:'html',
			cache:false,
			success:function(res) {
				//alert(res);
				$('#postResult').html(res);
			},
			error:function(err) {
				alert('error: '+err.status);
			}
		})
	}
	

</script>

<div class="container">
	<div class="row p-3">
		<div class="col-md-10 offset-md-1">   
				<label class="text-center">주소찾기</label>
				<input type="text" name="roadName" id="roadName" class="form-control m-1" placeholder="주소를 입력해 주세요" autofocus="autofocus">
				<div style="overflow:auto; width:450px; height:120px; padding:10px;">
				</div>
		</div>
	</div>
</div>

<div id="postResult">

</div>

<script type="text/javascript">
	var setAddr = function(addr, postCode) {
		opener.document.f.addr1.value = addr;
		opener.document.f.post.value = postCode;
		self.close();
	}
</script>