--sungjuk.sql
java202307\database\section0818\06_성적테이블.sql

--sqlplus 사용자 추천
--오라클 콘솔창 예쁘게 출력
set linesize 1000;
col uname for a10; --col 칼럼명 for 20자
col addr  for a10;

--테이틀 성적 삭제
drop table sungjuk;

--sungjuk 테이블 생성
create table sungjuk (
    sno   int         not null  --일련번호
   ,uname varchar(50) not null
   ,kor   int         not null 
   ,eng   int         not null
   ,mat   int         not null
   ,tot   int         
   ,aver  int   
   ,addr  varchar(20)          --주소
   ,wdate date                 --작성일(년월일시분초)
   
--sungjuk ㅌ테이블에서 사용할 시퀀스 생성
   create sequence sungjuk_seq;
   
--sungjuk_seq 시퀀스 삭제
   drop sequence sungjuk_seq;
   
--전체 행 개수
   select count(*) from sungjuk;
   select count(*) as cnt from sungjuk;
   
   --전체 행에 대해서 총점과 평균 구하기
   update sungjuk set tot=kor+eng+mat, aver=(kor+eng+mat)/3;
   commit;
   
   
   --문제)주소가 서울인 행들의 국영수 평균값을 구하시오 (단, 소수점은 반올림해서 둘째자리값까지 표현)
   select kor, eng, mat
   from sungjuk
   where addr='Seoul';
   
   select round(avg(kor),2) as avg_kor, round(avg(eng),2) as avg_eng, round(avg(mat),2) as avg_mat
   from sungjuk
   where addr='Jeju';
   
   --문제)이름에 '차'가 들어있는 행을 조회하시오
   select *
   from sungjuk
   where uname like '%차%';
   
--페이징
 --문제)sungjuk 테이블에서 이름순으로 정렬 후 행번호 4~6만 조회하시오
   select sno, uname, aver, addr
   from sungjuk
   order by uname;
);

--줄번호 rownum 추가
select sno, uname, aver, addr, rownum
from (
        select sno, uname, aver, addr
        from sungjuk
        order by uname
     )AA;
     
--rownum 칼럼명 변경
select sno, uname, aver, addr, rownum as rnum
from (
        select sno, uname, aver, addr
        from sungjuk
        order by uname
     )AA;
     
--위의 결과값을 BB테이블로 정의
select *
from (
        select sno, uname, aver, addr, rownum as rnum
        from (
        select sno, uname, aver, addr
        from sungjuk
        order by uname
             )AA
      )BB;
      
--AA, BB 이름 생략
select *
from (
        select sno, uname, aver, addr, rownum as rnum
        from (
            select sno, uname, aver, addr
            from sungjuk
            order by uname
             )
      );
      
--행번호 4~6 조회
select *
from (
        select sno, uname, aver, addr, rownum as rnum
        from (
            select sno, uname, aver, addr
            from sungjuk
            order by uname
             )
      )
where rnum>=4 and rnum<=6;