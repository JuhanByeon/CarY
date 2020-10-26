<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${user eq null}">
	<p id="null" style="color:green; font-weight:bold;">사용 가능한 아이디 입니다.</p>
	<script>
		idCheck = true;
	</script>
	
</c:if>

<c:if test="${user ne null}">
	<p id="notNull" style="color:red; font-weight:bold;">이미 있는 아이디 입니다.</p>
	<script>
		f.userid.focus();
		idCheck = false;
	</script>
</c:if>
