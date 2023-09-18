package oop0913;

interface Creature {
	//void disp() {} 에러. 일반 메소드는 사용불가
	abstract void kind();  //추상 메소드만 가능하다
	void breathe();		   //abstract 생략 가능
}//interface end


class Tiger implements Creature {

	@Override
	public void kind() {
		System.out.println("포유류");
	}

	@Override
	public void breathe() {	
		System.out.println("허파");
	}
	
} //class end

class Salmon implements Creature {

	@Override
	public void kind() {
		System.out.println("어류");
		
	}

	@Override
	public void breathe() {
		System.out.println("아가미");
		
	}
	
} //class end
