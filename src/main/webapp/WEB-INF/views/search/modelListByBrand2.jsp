<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<c:if test="${m_name!=null}">
		<select name="car_Model" id="car_Model" class="select_box">
			<option selected value="">모델</option>
					<c:forEach items="${m_name}" var="i" >
				<option value="${i.m_code}">${i.m_name}</option>		
					</c:forEach>
		</select>
	</c:if>
