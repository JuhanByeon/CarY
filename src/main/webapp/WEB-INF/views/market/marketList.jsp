<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%
	String myctx = request.getContextPath();
%>

<%-- MAPPER에서 조건에 맞게 검색 --%>
<%-- 동시에 페이징 --%>

<c:if test="${carList eq null || empty carList }">
	<div id='nodata' style="text-align:center">데이터가 없습니다.</div>
</c:if>
<c:if test="${carList ne null && not empty carList }">
	<c:forEach items="${carList}" var="car" varStatus="vs">
		<div class="list_box clfixed" style="margin-top:3em;margin-bottom:3em"><!-- 마진주자 -->
			<div class="list_img">
			    <a href="javascript:void(window.open('<%=myctx%>/cardetail?idx=${car.idx}', '_blank'))">
			    <img src="images/${car.car_img1 }" alt="차량이미지"></a>
			</div>
			
			<div class="list_center">
			    <c:if test="${ car.car_test ne null }"><span class="tag">성능점검有</span></c:if>
			    <br />
			    <br />
			    <h3><a href="javascript:void(window.open('<%=myctx%>/cardetail?idx=${car.idx}', '_blank'))"> 
			    ${car.s_name} - ${car.b_name}(${car.m_name}) </a></h3><!-- 이름으로 바꾸기 -->
			    
			    <br />
			    <span style="color:gray;">${car.car_gear} <span> | </span> ${car.car_fuel} </span>
			    <br />
			    <ul class="list_car_info" style="margin-top:1.5em">
			        <li>${car.car_size}</li>
			        <li style="font-size:0.5em">|</li>
			        <li>${car.car_age}식</li>
			        <li style="font-size:0.5em">|</li>
			        <li><fmt:formatNumber value="${car.car_km}" type="number" />km</li>
			        
			    </ul>
			</div>
			
			<div class="list_right">
			    <c:if test="${car.car_hs == 0}"><span class="tag">홈서비스 가능</span></c:if>
			    <br />
			    <br />
			    <h2 style="color: red;">
			    <fmt:formatNumber value="${car.car_price/1000}" type="number" pattern="###,###"/>
			    <small style="font-size: 0.8em;">만원</small>
			    </h2>
			</div>
		</div>
		<c:if test="${!vs.last}">
			<hr id="line" color="gray" >
		</c:if>
			
	</c:forEach>
	
	
<div class="table_list_paging_wrap">
	<div class="paging">
		<c:if test="${page.prevBlock>0}"> <!-- 이전 10개 -->
			<a class="page-link" href="#" onclick="executeCarList('1')">&laquo;</a>
			<a class="page-link" href="#" onclick="executeCarList('${page.prevBlock}')">&lt;</a>
		</c:if>
		
		<c:forEach var="i" begin="${page.prevBlock+1}" end="${page.nextBlock-1}" step="1">
		  <c:if test="${i<=page.pageCount}">	
			<a class="page-link" href="#" onclick="executeCarList('${i}')" 
			 style="font-weight:<c:if test="${page.cpage== i}">bold</c:if>">${i}</a>
		  </c:if>	
		</c:forEach>
		
		<c:if test="${nextBlock<=pageCount}"> <!-- 이후 10개  ${nextBlock}-->
			<a class="page-link" href="#" onclick="executeCarList('${page.nextBlock}')">&gt;</a>
			<a class="page-link" href="#" onclick="executeCarList('${page.pageCount}')">&raquo;</a>
		</c:if>
	</div>
</div>	
</c:if>

<script type="text/javascript">
	new numCnt("sise_min", parseInt(${page.sise_min}));   	 
	new numCnt("sise_max", parseInt(${page.sise_max}));
	$('#totalCar').text(${page.totalCount});
	
</script>


