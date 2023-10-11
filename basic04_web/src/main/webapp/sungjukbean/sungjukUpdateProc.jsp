<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukRead.jsp</title>
</head>
<body>
   <p>
      <a href="sungjukForm.jsp" class="">[성적쓰기]</a>
      <a href="sungjukList.jsp" class="">[성적목록]</a>
   </p>
<%
   
   int sno=Integer.parseInt(request.getParameter("sno")); 
   String uname=request.getParameter("uname").trim();
   int kor    =Integer.parseInt(request.getParameter("kor").trim());
   int eng      =Integer.parseInt(request.getParameter("eng").trim());
   int mat    =Integer.parseInt(request.getParameter("mat").trim());
   String addr = request.getParameter("addr");
   int aver = (kor+eng+mat)/3;
   
   dto.setSno(sno);
   dto.setUname(uname);
   dto.setKor(kor);
   dto.setEng(eng);
   dto.setMat(mat);
   dto.setAddr(addr);
   dto.setAver(aver);
   
   int cnt = dao.updateproc(dto);
   
   if(cnt==0){
      out.print("해당 글 없음!!");
   } else{
         out.print("<script>");
         out.print("      alert('정보가 수정되었습니다.');");
         out.print("      location.href='sungjukList.jsp';");   //목록페이지 이동
         out.print("</script>");
   }
%>   
</body>
</html>