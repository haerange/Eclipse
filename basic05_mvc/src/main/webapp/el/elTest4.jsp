<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elTest4.jsp</title>
</head>
<body>
	<h3>* JSP와 EL의 값 공유 *</h3>
<%
	String uname = "아이티윌";
	
%>
	이름(JSP)	: <%=uname%> <br> <!-- 아이티윌 -->
	이름(EL)	: ${uname}		  <!-- 빈문자열 -->
	<hr>
	
<%
	//현재 페이지에서 JSP와 EL이 서로 값을 공유하기 위해서는 pageScope를 활용한다
	pageContext.setAttribute("uid", "KOREA");
%>	
	아이디(JSP): <%=pageContext.getAttribute("uid")%><br>
	아이디(EL) : ${pageScope.uid}<br>
	아이디(EL) : ${uid}
	
	
</body>
</html>