package oop0908;

class Score {  //package 생략되어 있음
			   //oop0908 패키지 내에서만 접근 가능
	//멤버변수 field
	private String name;
	private int kor, eng, mat;
	private int aver;
	
	//생성자함수 constructor ->메모리를 할당하고 초기화할 때 사용
	public Score() {}  //기본생성자 default constructor
	
	public Score(String name, int kor, int eng, int mat) {
		this.name = name; //this.멤버변수 = 지역변수
		this.kor=kor;
		this.eng=eng;
		this.mat=mat;
	}
	
	//overload를 결정하는 요소는 ()->매개 변수
	
	
	//멤버함수 method
	public void calc() {
		this.aver = (kor+eng+mat)/3;
	}
	
	public void disp() {
		System.out.println(this.name);
		System.out.println(this.kor);
		System.out.println(this.eng);
		System.out.println(this.mat);
		System.out.println(this.aver);
	}
	
	
}//class end
