<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp" %>

<!-- 본문 시작 pdsDel.jsp -->
<!-- 글번호(pdsno)와 비밀번호(passwd)가 일치하면 행 삭제 및 첨부파일 삭제하기 -->
<h3>* 사진 삭제 *</h3>
<p><a href="pdsList.jsp">[뽀토 갤러리]</a></p>
<%
	int pdsno=Integer.parseInt(request.getParameter("pdsno"));
%>
<form method="post" action="pdsDelProc.jsp" onsubmit="return pwCheck2()">
	<input type="hidden" name="pdsno" value="<%=pdsno%>">
	<table class="table">
	<tr>
		<th class="success">비밀번호</th>
		<td><input type="password" name="passwd" id="passwd" maxlength="15" required></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="삭제" class="btn btn-danger">
		</td>
	</tr>
	
	
	</table>
</form>



<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>