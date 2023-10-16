<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 template.jsp -->
<!-- 글번호가 일치하는 행을 가져와서, 수정폼에 출력하기 -->
<h3>* 게시판 수정 *</h3>
<p>
	<a href="bbsForm.jsp">[글쓰기]</a>
	&nbsp;&nbsp;
	<a href="bbsList.jsp">[글목록]</a>
<%
int bbsno=Integer.parseInt(request.getParameter("bbsno"));
	dto = dao.read(bbsno);  //글번호가 일치하는 행을 가져오기
	if(dto==null){
		out.println("해당 글 없음!!");
	}else {
 	
	}//if end
%>


<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>