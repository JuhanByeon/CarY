<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="mL" items="${mlist}">
<div class="option model-option">
	<input type="radio" name="m_name" id="model" class="radio" value="${mL.m_name}">
	<label>${mL.m_name}</label>
</div>
</c:forEach>