<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="dL" items="${dlist}">
	<div class="option detail-option">
		<input type="radio" name="s_name" class="radio" value="${dL.s_name}"> 
			<label>${dL.s_name}</label>
	</div>
</c:forEach>