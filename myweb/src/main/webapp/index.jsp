<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>12_myweb인트로.html</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- layout.css import -->
  <link rel="stylesheet" href="./css/layout.css">
  <script src="./js/myscript.js"></script>
  
</head>
<body>

<!-- 메인 카테고리 시작 -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">HOME</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="./bbs/bbsList.jsp">게시판</a></li>
        <li><a href="./notice/noticeList.jsp">공지사항</a></li>
        <li><a href="./member/loginForm.jsp">로그인</a></li>
        <li><a href="./pds/pdsList.jsp">포토갤러리</a></li>
        <li><a href="./mail/mailForm.jsp">메일보내기</a></li>
      </ul>
    </div>
  </div>
</nav><!-- 메인 카테고리 끝 -->

<!-- Content 시작 -->
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <img src="./images/지수.jpeg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
  <h3>이 사람은 블랙핑크의 지수입니다. </h3>
</div><!-- First Container 끝 -->

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
    <div class="row">  <!-- 한 줄 추가 -->
        <div class="col-xs-12">
            <!-- 본문 시작 -->
            
            <h3>현재 시간</h3>
            <h1 id="clock"></h1>
          
            <script>
              showtime();

              function showtime() {
          
                  const d = new Date(); //시스템의 현재 날짜 정보 가져오기 (년월일시분초)
          
                  let today = "";  //결과값
                  today += d.getFullYear() + ".";  //2023
          
                  if (d.getMonth() + 1 < 10) {
                      today += "0";
                  }
                  today += d.getMonth() + 1 + ".";
          
                  if (d.getDate() < 10) {
                      today += "0";
                  }
                  today += d.getDate();
          
                  switch (d.getDay()) {
                      case 0: today += " (일) "; break;
                      case 1: today += " (월) "; break;
                      case 2: today += " (화) "; break;
                      case 3: today += " (수) "; break;
                      case 4: today += " (목) "; break;
                      case 5: today += " (금) "; break;
                      case 6: today += " (토) "; break;
                  }
          
                  if (d.getHours() < 12) {
                      today += " AM ";
                  } else {
                      today += " PM ";
                  }
          
                  if (d.getHours() < 13) {
                      today += d.getHours() + ":";
                  } else {
                      today += d.getHours() - 12 + ":";   //2023.08.08 (화) PM 2:
                  }
          
                  if (d.getMinutes() < 10) {
                      today += "0";
                  }
                  today += d.getMinutes() + ":";        //2023.08.08 (화) PM 2:03
          
                  if (d.getSeconds() < 10) {
                      today += "0";
                  }
                  today += d.getSeconds();              //2023.08.08 (화) PM 2:03:18
          
                  document.getElementById("clock").innerText = today;
          
                  //1초 후에 showtime 함수를 호출
                  timer = setTimeout(showtime, 1000);
          
              }//showtime()end
              </script>
              
            <!-- 본문 끝 -->
        </div> <!-- col-xs-12 끝 -->
    </div><!-- row 끝 -->
  </div><!-- Second Container 끝 -->


<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  Copyright &copy; 2023 MyWeb 
</footer>

</body>
</html>
