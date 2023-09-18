package oop0907;

class Exam {
	
	//멤버변수 field
	private String name;
	private int kor, eng, mat;
	private int aver;

	//생성자 함수 constructor
	//이클립스 코딩툴에서 생성자 함수를 자동 코딩할 수 있다
	public Exam() {}

	public Exam(String name) {
		this.name = name;
	}

	public Exam(int kor, int eng, int mat) {
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}

	public Exam(String name, int kor, int eng, int mat) {
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}
	
	
	
}
