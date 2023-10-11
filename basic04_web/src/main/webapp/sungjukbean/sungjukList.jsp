<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="net.sungjuk.*"%>

<jsp:useBean id="dao" class="net.sungjuk.SungjukDAO" scope="page"></jsp:useBean>
<jsp:useBean id="dto" class="net.sungjuk.SungjukDTO" scope="page"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukList.jsp</title>
</head>
<body>
   <p>
      <a href="sungjukForm.jsp" class="btn btn-default">[성적쓰기]</a></p>
      <table>
      <tr class="danger">
		<th>이름</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>
		<th>등록일</th>
	</tr>
	
<%
	ArrayList<SungjukDTO> list = dao.list();
	if(list==null){
		out.print("<tr>");
		out.print("	<td colspan='5'>글 없음!!!</td>");
		out.print("</tr>");
	}else {
		for(int i=0; i<list.size(); i++){
			dto = list.get(i);  //한줄 가져오기
%>

	<tr>
	<td><a href="sungjukRead.jsp?sno=<%=dto.getSno()%>"><%=dto.getUname()%></a></td>
	<td><%=dto.getKor() %></td>
	<td><%=dto.getEng() %></td>
	<td><%=dto.getMat() %></td>
	<td><%=dto.getWdate().substring(0, 10) %></td>
	</tr>
<%	
		}
	}

%>   
</table>
</body>
</html>