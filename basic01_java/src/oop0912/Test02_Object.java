package oop0912;

import java.lang.*;  //생략가능하다

class Jeju extends Object {
	@Override
	public String toString() {
		return "제주도";
	}
	
}//class end

class Suwon extends Object {
	private String id="itwill";
	private String pw="1234";
	
	@Override
	public String toString() {
		return "Suwon [id=" + id + ", pw=" + pw + "]";
	}
}//class end

class Incheon extends Object {
	private String name="인천 광역시";
	private String phone="789-8745";
	
	//메뉴 Source -> Generate toString()...
	@Override
	public String toString() {
		return "Incheon [name=" + name + ", phone=" + phone + "]";
	}
}//class end

class Seoul {} //제대로 못 보고 지나침 근데 맞나 봐 결과가 나오네

public class Test02_Object extends Object {  //extends Object 생략가능

	public static void main(String[] args) {
		//Object 클래스
		/*
		 	-자바의 최고 조상 클래스 : Object 클래스
		 	-자바의 기본 패키지 (java.lang)에 선언되어 있음
		 	-자바의 모든 클래스는 무조건 Object 클래스를 상속 받는다
		 */
		
		Jeju je = new Jeju();
		System.out.println(je.toString());
		
		Suwon su = new Suwon();
		System.out.println(su.toString());
		
		Incheon in = new Incheon();
		System.out.println(in.toString());
		
		
		//함수 이름 toString() 생략 가능
		System.out.println(je);
		System.out.println(su);
		System.out.println(in);
		
		Seoul se = new Seoul();
		System.out.println(se);
		
		
		
	}

}
