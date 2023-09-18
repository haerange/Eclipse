package oop0912;

class Parent extends Object {
	int one, two;
	public Parent() {}
	public Parent(int one, int two) {
		this.one = one;
		this.two = two;
	
	}
}//class end

class Child extends Parent {
	int three;
	public Child() {
		super();  //생략가능
	}
	public Child(int a, int b, int c) {
		//상속받은 멤버변수(one, two)에 초기값 전달
		super(a,b);
		this.three = c;
	}
}//class end
