<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <c:if test="${s_name!=null}">
		<select name="car_Detail" id="car_Detail" class="select_box">
			<option selected value="">모델</option>
					<c:forEach items="${s_name}" var="i" >
				<option value="${i.s_code}">${i.s_name}</option>		
					</c:forEach>
		</select>
	</c:if>
	