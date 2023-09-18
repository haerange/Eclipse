package oop0911;

class Korea {
	String name="대한민국";
	
	final void view() {
		System.out.println("Korea.view()...");
	}
	
	void disp() {
		System.out.println("Korea.disp()..." + name);
	}//disp() end
	
}//class end

class Seoul extends Korea {} //class end


class Busan extends Korea {
	String name="부산광역시";
	
	@Override //<-annotation 상속관계에서 리폼하는 거
	void disp() {
		System.out.println("Busan.disp()..." + name);
	}
}//class end
