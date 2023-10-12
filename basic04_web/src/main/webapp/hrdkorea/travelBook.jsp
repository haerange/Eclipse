<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>travelBook.jsp</title>
	<style>
		header{background:skyblue; color:white; text-align:center;}
		nav	  {background:cornflowerblue; color:white;}
		footer{background:skyblue; color:white; text-align:center;}
		body {background: lightgray;}
		
		
		
	</style>
	
	<script>
		//function validate() { 
			//유효성 검사
			// /form/02_from.jsp 참조
			
			
		//}//validate() end
	
		//여기선 내가 ~
		function emailCheck(remail){     
			remail_regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
			if(!remail_regex.test(remail)){ 
				return false; 
			}else{
				return true;
			}
		}
		function submit() {
			var remailInput = document.getElementById('remail');
			var resultDiv = document.getElementById('result');

			var remail = remailInput.value;

			if (emailCheck(remail)) {
				resultDiv.innerHTML = '유효한 이메일 주소입니다.';
			} else {
				resultDiv.innerHTML = '유효하지 않은 이메일 주소입니다.';
			}
		}
		//여기까지 내가~
		
	</script>
</head>
<body>

	<header>여행예약 프로그램 ver2018-12</header>
	<nav>
		<jsp:include page="mainmenu.jsp"></jsp:include>
	</nav>
	
	<section>
		<!-- 본문시작 -->
			<h3 align="center">예약등록</h3>
			<div class="box">
			<form name="" id="" method="post" action="travelBookProc.jsp">
			   <table border="1" width="880px" align="center">
		       <tr>
		           <th>예약번호</th>
		           <td>
		               <input type="text" name="rno" id="rno" size="8" maxlength="8" required>
		           </td>
		           <td>
		           [JJ01]제주 2018-12-01 09:30(AM)출발 - 360,000원 (2박 3일)
		           </td>
		       </tr>
		       <tr>
		           <th>상품코드</th>
		           <td>
		           	   <select name="tcode" id="tcode">
		           	       <option value="">상품선택</option>
<%
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		String url 		="jdbc:oracle:thin:@localhost:1521:xe";
		String user		="system";
		String password ="1234";
		String driver	="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, password);
		
		StringBuilder sql=new StringBuilder();
		sql.append(" SELECT tcode ");
		sql.append(" , '[' || tcode || ']' || tarea ");
		sql.append("  || substr(tdate, 1, 4) || '-' || substr(tdate, 5, 2) || '-' || substr(tdate, 7, 2) ");
		sql.append("  || ' 출발' as tname ");
		sql.append("  FROM tbl_tourcode_02 ");
		sql.append("  ORDER BY tcode ");
		
		pstmt=con.prepareStatement(sql.toString());
		rs=pstmt.executeQuery();
		if(rs.next()){
			do{
				out.println("<option value='" + rs.getString("tcode") + "'>");
				out.println(rs.getString("tname"));
				out.println("</option>");
			}while(rs.next());
		}//if end
		
	}catch (Exception e) {
		out.println("오라클DB연결실패:" + e);
	}finally { //자원반납(순서주의)
		try {
			if(rs!=null){rs.close();}
		}catch (Exception e) {}
		try {
			if(pstmt!=null){pstmt.close();}
		}catch (Exception e) {}
		try {
			if(con!=null) {con.close();}
		}catch (Exception e) {}
	}

%>
		           	   </select>
		           </td>
		           <td>
		           [JJ02]부산 2018-12-02 10:00(AM)출발 - 280,000원 (2박 3일)
		           </td>
		       </tr>
			   <tr>
		           <th>주민번호</th>
		           <td>
		               <input type="text" name="rjumin1" id="rjumin1" size="6" maxlength="6" required>
		               -
		               <input type="text" name="rjumin2" id="rjumin2" size="7" maxlength="7" required>
		           </td>
		           <td>
		           [JJ03]제주 2018-12-04 10:00(AM)출발 - 360,000원 (2박 3일)
		           </td>
		       </tr>
		       
		       <tr>
		           <th>예약자성명</th>
		           <td>
		               <input type="text" name="rname" id="rname" size="20" maxlength="20" required>
		           </td>
		           <td>
		           [JJ04]제주 2018-12-07 11:00(AM)출발 - 420,000원 (3박 4일)
		           </td>
		       </tr>
		       
		       <tr>
		           <th>예약자전화</th>
		           <td>
		               <input type="text" name="rphone1" id="rphone1" size="3" maxlength="3" required>
		               <input type="text" name="rphone2" id="rphone2" size="4" maxlength="4" required>
		               <input type="text" name="rphone3" id="rphone3" size="4" maxlength="4" required>
		           </td>
		           
		           <td>
		           [JJ05]부산 2018-12-09 13:30(PM)출발 - 260,000원 (2박 3일)
		           </td>
		       </tr>
		       
		       <tr>
		           <th>고객이메일</th>
		           <td>
		               <input type="text" name="remail" id="remail" size="40" maxlength="30" placeholder="your@email.com" required>
		           </td>
		           <td>
		           [JJ06]제주 2018-12-10 09:30(AM)출발 - 460,000원 (3박 4일)
		           </td>
		       </tr>  
		       
		       <tr>
		           <th>결제상태</th>
		           <td>
		               <input type="radio" name="rstat" id="rstat" value="1" checked>미납
		               <input type="radio" name="rstat" id="rstat" value="2">완납
		           </td>
		           <td></td>
		       </tr>
		       
			   <tr>
		           <td colspan="3" align="center">
		               <input type="submit" value="예약">
		               <input type="reset"  value="다시쓰기" onclick="alert('정보를 지우고 처음부터 다시 입력합니다!!');">
		           </td>
		           
		       </tr>
		       
		       </table>
			</form>
			</div>
		<!-- 본문끝 -->
	</section>
	
	<footer>
		<p>
			HRDKOREA copyright&copy;2018 All rights reserved.
			Human Resources Development Service of Korea
		</p>
	</footer>















</body>
</html>