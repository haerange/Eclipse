<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="ssi.jsp" %>   
<%@ include file="../header.jsp" %>

<!-- 본문 시작 memberProc.jspㅡ 내가 다 작성 -->
<h3>* 회원가입 결과 *</h3>
<!--
<p>
	<a href="index.jsp">[홈]</a>
	&nbsp;&nbsp;
	<a href="bbsList.jsp">[글목록]</a>
</p>
 -->
<%
	//1)사용자가 입력 요청한 값 가져오기
	String id 		=request.getParameter("id").trim();
	String passwd 	=request.getParameter("passwd").trim();
	String mname 	=request.getParameter("mname").trim();
	String tel 		=request.getParameter("tel").trim();
	String email 	=request.getParameter("email").trim();
	String zipcode 	=request.getParameter("zipcode").trim();
	String address1 =request.getParameter("address1").trim();
	String address2 =request.getParameter("address2").trim();
	String job 		=request.getParameter("job").trim();

	
	//2)dto객체 담기
	dto.setId(id);
	dto.setPasswd(passwd);
	dto.setMname(mname);
	dto.setTel(tel);
	dto.setEmail(email);
	dto.setZipcode(zipcode);
	dto.setAddress1(address1);
	dto.setAddress2(address2);
	dto.setJob(job);

	//3)member테이블에 추가하기
	int cnt = dao.create(dto);
	if(cnt==0){
		out.println("<p>회원가입에 실패하였습니다.</p>");
		out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
	}else {
		out.println("<script>");
		out.println("	alert('회원가입이 완료되었습니다.');");
		out.println("	location.href='bbsList.jsp?col=");  //목록페이지 이동
		out.println("</script>");
	}//if end

%>


<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>