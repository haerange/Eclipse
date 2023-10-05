<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>02_form.jsp</title>
<script>
	function validate() {
		//alert();
		//이름 3~20 글자 이내에서 입력해야만 섭로 전송 (02.ok.jsp)
		//jQuery : $("#uname").val()
		let uname=document.getElementById("uname").value;
		uname = uname.trim();
		if(uname.length<3 || uname.length>20){
			alert("이름 3~20글자 이내에서 입력해 주세요");
			return false;
		}
		return true;
	}//validate() end
</script>
</head>
<body>
	<div class="cotnainer">
	<h3> *성적 입력* </h3>
	<form name="sungjukfrm" id="sungjukfrm" action="02_ok.jsp" method="post" onsubmit="return validate()">
		이름 : <input type="text" class="form-control" name="uname" id="uname" maxlength="20" placeholder="이름" required>
        
        국어 : <input type="number" class="form-control" name="kor" id="kor" min="0" max="100" size="5" >        
        
        영어 : <input type="number" class="form-control" name="eng" id="eng" min="0" max="100" size="5" >
        
        수학 : <input type="number" class="form-control" name="mat" id="mat" min="0" max="100" size="5" >
        <hr>
        <input type="submit" class="btn btn-success" value="전송">
        <input type="reset"  class="btn btn-danger" value="취소">
     </form>
     </div>
     <!--
     	● [<form> 관련 다양한 속성들]
     	사용자가 입력한 정보를 서버로 전송하기 위한 양식
     	name 	: 폼이름. 서버에서 식별하기 위한 이름
     	id		: 폼아이디. Frontend단에서 식별자로 주로 이용
     	action 	: 사용자가 요청한 정보를 서버가 받아서 처리할 결과 페이지
     	method	: 폼 전송 방식. get | post 방식. 생략시 기본은 get 방식
     	enctype : 폼에서 파일을 첨부해서 서버로 전송하고자 할 때 "multipart/form-data"추가
       
       
       ● [폼 전송방식]
       
       1) method=get 방식
       	  -생략시 기본값
       	  -사용자가 입력 요청한 정보가 URL, 그대로 노출
       	  -한글 안 깨짐
       	  -ok.jsp?서버로 전송되는 값들
       	  형식)요청페이지(또는 
       	  
       2) method=post 방식
		
		※ 전송방식 put, delete는 <form>에서는 지원하지 않음       
       -->
</body>
</html>