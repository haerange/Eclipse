<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sungjukRead.jsp</title>
</head>
<body>
    <h3> </h3>
    
<%
	//sungjukIns.jsp 참조
	
	//한글 인코딩
	request.setCharacterEncoding("UTF-8");

	//사용자가 입력한 정보를 가져와서 변수에 담기
	int sno=Integer.parseInt(request.getParameter("sno")); //글번호
	String uname=request.getParameter("uname").trim();
	int	kor		=Integer.parseInt(request.getParameter("kor").trim());
	int	eng		=Integer.parseInt(request.getParameter("eng").trim());
	int	mat		=Integer.parseInt(request.getParameter("mat").trim());
	String addr =request.getParameter("addr");
	
	int aver=(kor+eng+mat)/3;
	
	//Oracle DB연결 및 행 추가-----------------------------------------
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		String url 		="jdbc:oracle:thin:@localhost:1521:xe";
		String user		="system";
		String password ="1234";
		String driver	="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, password);
		
		StringBuilder sql=new StringBuilder();
		sql.append(" UPDATE sungjuk ");
		sql.append(" SET uname=?, kor=?, eng=?, mat=?, aver=?, addr=?, wdate=sysdate ");
		sql.append(" WHERE sno=? ");
		
		pstmt=con.prepareStatement(sql.toString());
		pstmt.setString(1, uname);
		pstmt.setInt(2, kor);
		pstmt.setInt(3, eng);
		pstmt.setInt(4, mat);
		pstmt.setInt(5, aver);
		pstmt.setString(6, addr);
		pstmt.setInt(7, sno);
		
		int cnt=pstmt.executeUpdate();
		if(cnt==0){
			out.println("<p>성적 입력이 실패했습니다!!</p>");
			out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
		}else {
			out.println("<script>");
			out.println("	alert('성적이 입력되었습니다~');");
			out.println("	location.href='sungjukList.jsp';");   //목록페이지 이동
			out.println("</script>");
		}//if end
		
	}catch (Exception e) {
		out.println("오라클DB연결실패:" + e);
	}finally { //자원반납(순서주의)
		try {
			if(pstmt!=null){pstmt.close();}
		}catch (Exception e) {}
		try {
			if(con!=null) {con.close();}
		}catch (Exception e) {}
	}
	

%>    

</body>
</html>