<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String myctx = request.getContextPath();
%>


<div class="main_tit clfixed">
	<p style="float: left; margin: 0; margin-right: 3%;">
		총 <span style="color: red;">${Count}</span>대
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

<table>
	
	<!-- forEach ----------------- -->
	<c:if test="${searchList eq null or empty searchList}">
		<tr>
			<td colspan="3"><b>데이터가 없습니다.</b>
		</tr>
	</c:if>
	<c:if test="${searchList ne null and not empty searchList}">
		<c:forEach var="list" items="${searchList}">
			<tr>
				<td><a
					href="javascript:void(window.open('<%=myctx%>/cardetail.do?idx=${list.idx}','_blank'))">
						<img src="images/${list.car_img1}" style="width: 180px">
				</a></td>
				<td><a
					href="javascript:void(window.open('<%=myctx%>/cardetail.do?idx=${list.idx}','_blank'))"><span>${list.b_name}  ${list.s_name}</span></a><br>
					<span>${list.car_age}년  ${list.car_km}KM  ${list.car_fuel}  ${list.car_test}</span>
				</td>
				<td><span>홈서비스 여부</span><br> <span class="text-danger">${list.car_price}</span><br>
					<span>할부 월 N 원</span></td>
			</tr>
		</c:forEach>
	</c:if>
	<!-- forEach end--------------------------- 

	<tr>
		<td colspan="3" class="text-center">
			<!-- begin:시작값, end: 끝값, step: 증가치 -->
			<ul class="pagination justify-content-center">

				<c:if test="${prevBlock2>0}">
					<!-- 이전 5개 -->
					<li class="page-item"><a class="page-link" href="#"
						onclick="prevB2(${prevBlock2})">이전${pagingBlock2}개</a></li>
				</c:if>

				<c:forEach var="i" begin="${prevBlock2+1}" end="${nextBlock2-1}"
					step="1">
					<c:if test="${i<=pageCount2}">
						<li class="page-item <c:if test="${cpage==i}">active</c:if>">
							<a class="page-link" href="#" onclick="pageC2(${i})">[${i}]</a>
						</li>
					</c:if>
				</c:forEach>

				<c:if test="${nextBlock2<=pageCount2}">
					<!-- 이후 5개 -->
					<li class="page-item"><a class="page-link" href="#"
						onclick="nextB2(${nextBlock2})">이후${pagingBlock2}개</a></li>
				</c:if>

			</ul>
		</td>
		<td colspan="2" class="text-center">총 차량 수:<span
			class="text-danger">${Count}개</span> <br> <span
			class="text-danger">${cpage}</span>/ <span>${pageCount2}</span>
		</td>
	</tr>
-->
</table>