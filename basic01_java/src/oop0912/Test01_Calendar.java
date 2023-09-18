package oop0912;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class Test01_Calendar {

	public static void main(String[] args) {
		//날짜 관련 클래스 (년월일시분초 요일)
		//교재 : Chapter 11 기본 API 클래스
		
		//GregorianCalendar
		//Calendar
		//Date
		
		GregorianCalendar now = new GregorianCalendar();
		System.out.println(now.get(1));   //년도 2023
		System.out.println(now.get(2));	  //월	8
		System.out.println(now.get(2)+1); //월	9
		System.out.println(now.get(5));	  //일	12
		
		System.out.println(now.get(Calendar.YEAR));
		System.out.println(now.get(Calendar.MONTH));
		System.out.println(now.get(Calendar.MONTH)+1);
		System.out.println(now.get(Calendar.DATE));
		
		System.out.println(now.get(Calendar.HOUR));
		System.out.println(now.get(Calendar.MINUTE));
		System.out.println(now.get(Calendar.SECOND));
		
		//24시간을 기준으로
		System.out.println(now.get(Calendar.HOUR_OF_DAY));
		//요일(1일 2월 3화 4수 5목 6금 7토)
		System.out.println(now.get(Calendar.DAY_OF_WEEK));
		//////////////////////////////////////////////////////
		
		//날짜 데이터 구성하기
		//1989년 5월 30일
		GregorianCalendar myBirth = new GregorianCalendar();
		myBirth.set(Calendar.YEAR, 1989);
		myBirth.set(Calendar.MONTH, Calendar.MAY);
		myBirth.set(Calendar.DATE, 30);
		////////////////////////////////////////////////////////
		
		//날짜 데이터 연산
		
		//now 날짜에 3년 더하기
		now.add(Calendar.YEAR, 3);
		System.out.println(now.get(Calendar.YEAR));
		
		//now 날짜에 5달 빼기
		now.add(Calendar.MONTH, -5);
		System.out.println(now.get(Calendar.MONTH));
		
		//now날짜에 7일 더하기
		now.add(Calendar.DATE, 7);
		System.out.println(now.get(Calendar.DATE));
	}

}
