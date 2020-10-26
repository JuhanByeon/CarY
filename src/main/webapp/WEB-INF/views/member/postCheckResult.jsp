<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 결과는 아래에 ajax 처리인데 그 결과값이 나오는 창 -->

<c:if test="${addrList eq null}">
	<div class="row-5">	
		<div class="col-md-10 offset-md-1">
			<h2 style="color:blue;">[${roadName}]으로 검색한 결과가 없습니다.</h2>
		</div>	
	</div>
</c:if>

<c:if test="${addrList ne null}">
	<c:forEach var="addr" items="${addrList}" varStatus="status">
			<div class="row-5">
				<div class="col-md-10 offset-md-1">
					<button class="btn btn-dark btn-block" type="button" onclick="setAddr('${addr}', '${postCode[status.index]}')">${addr}</button><p></p>
				</div>	
			</div>
	</c:forEach>
</c:if>
<div class="row-5">
	<div class="col-md-10 offset-md-1">
		<ul class="pagination justify-content-center">
		
			<c:if test="${prevBlock>0}"> <!-- 이전 5개 -->
				<a class="page-link" href="#" onclick="showNextPage('${prevBlock}', '${roadName}')">이전 ${pagingBlock}개</a>
			</c:if>
			
			<c:forEach var="i" begin="${prevBlock+1}" end="${nextBlock-1}" step="1">
				<c:if test="${i <= pageCount}">
					<li class="page-item <c:if test="${cpage==i}">active</c:if>">
						<a class="page-link" href="#" onclick="showNextPage('${i}', '${roadName}')">${i}</a>
					</li>
				</c:if>
			</c:forEach>
			
			<c:if test="${nextBlock<=pageCount}"> <!-- 이후 5개 -->
			<li class="page-item">
				<a class="page-link" href="#" onclick="showNextPage('${nextBlock}','${roadName}')">이후 ${pagingBlock}개</a>
			</li>
			</c:if>
		</ul>
	</div>	
</div>
