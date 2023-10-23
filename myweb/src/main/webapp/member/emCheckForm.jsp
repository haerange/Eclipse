<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>emCheckForm.jsp</title>
</head>
<body>
	<div style="text-align: center">
		<h3>* 이메일 중복확인 *</h3>
		<form action="emCheckProc.jsp" onsubmit="return blankCheck2()">
		 	이메일 : <input type="text" name="email" id="email" maxlength="50" autofocus>
		 		   <input type="submit" value="중복확인"> <!-- submit 누르면 action으로 감 -->
		</form>
	</div>
	
	<script> 
		function blankCheck2() {
			let email=document.getElementById("email").value;
			email=email.trim();
			if(email.length<10){
				alert("이메일은 50글자 이내로 입력해 주세요");
				return false;
			}//if end
			return true;
		}//blankCheck2() end
	</script>
</body>
</html>