<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 template.jsp -->
<h3>* 게시판 상세보기 *</h3>
<p>
	<a href="bbsForm.jsp">[글쓰기]</a>
	&nbsp;&nbsp;
	<a href="bbsList.jsp">[글목록]</a>
</p>
<%
	int bbsno=Integer.parseInt(request.getParameter("bbsno"));
	dto = dao.read(bbsno);
	if(dto==null){
		out.println("해당 글 없음!!");
	}else {
		dao.incrementCnt(bbsno); //조회수 증가
%>
	<table class="table">
	<tr>
		<th class="success">제목</th>
		<td><%=dto.getSubject()%></td>
	</tr>
	<tr>
		<th class="success">내용</th>
		<td>
<%		
			//특수문자 및 엔터를 <br>태그로 치환하기
			String content = dto.getContent();
			content = Utility.convertChar(content);
			out.print(content);
 %>
		</td>
	</tr>
	<tr>
		<th class="success">조회수</th>
		<td><%=dto.getReadcnt()%></td>
	</tr>
	<tr>
		<th class="success">작성자</th>
		<td><%=dto.getWname()%></td>
	</tr>
	<tr>
		<th class="success">작성일</th>
		<td><%=dto.getRegdt()%></td>
	</tr>
	<tr>
		<th class="success">IP</th>
		<td><%=dto.getIp()%></td>
	</tr>
	
	</table>

	<br>
	<input type="button" value="답변쓰기" class="btn btn-info" onclick="location.href='bbsReply.jsp?bbsno=<%=bbsno%>'">
	<input type="button" value="수정" class="btn btn-warning" onclick="location.href='bbsUpdate.jsp?bbsno=<%=bbsno%>&col=<%=col%>&word=<%=word%>'">
	<input type="button" value="삭제" class="btn btn-danger"  onclick="location.href='bbsDel.jsp?bbsno=<%=bbsno%>'">
<%		
	}//if end
%>



<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>