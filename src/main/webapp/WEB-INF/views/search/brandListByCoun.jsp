<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="brand" items="${blist}">
<div class="option company-option">
    <input type="radio" name="b_name" id="company" class="radio" value="${brand.b_name}">
       <label>${brand.b_name}</label>
</div>
</c:forEach>