<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 template.jsp -->
<h3>* 로 그 인 결 과 *</h3>
<%
	
	String id 		=request.getParameter("id").trim();
	String passwd 	=request.getParameter("passwd").trim();

	out.print(id);
	out.print(passwd);


%>




<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>