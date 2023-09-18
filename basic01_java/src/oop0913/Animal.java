package oop0913;

abstract class Animal {
	String name;
	void view() {} //일반 메소드
	abstract void disp(); //추상 메소드(미완성)
}//class end

//추상 클래스는 부모 역할만 주로 한다
//추상 클래스를 상속 받은 자식 클래스는 반드시 추상 메소드를 완성해야 한다(override)
class Elephant extends Animal {
	@Override
	void disp() {
		System.out.println("점보");
	}
}//class end

class Tuna extends Animal {
	@Override
	void disp() {
		System.out.println("니모");
	}
}//class end