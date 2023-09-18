package oop0904;

public class test04_operator {

	public static void main(String[] args) {
		//연산자
		//산술, 비교(관계), 논리연산자
		//삼항, 대입, 1증감 연산자
		
		System.out.println(5/3);  //1
		System.out.println(5%3);  //2
		
		System.out.println(3/5);  //0  정수값과의 연산은 결과값도 정수형으로 반환된다
		System.out.println(3%5);  //3
		
		System.out.println(3.0/5.0);  //0.6
		System.out.println(3/5.0);    //0.6
		System.out.println(3.0/5);    //0.6
		System.out.println(3/5.);     //0.6
		//////////////////////////////////////////////////////////
		
		/*
		    2진수  : 0 1
		    8진수  : 0 1 2 3 4 5 6 7
		 	10진수 : 0 1 2 3 4 5 6 7 8 9
		 	16진수 : 0 1 2 3 4 5 6 7 8 9 a b c d e f
		 	
		 							128 64 32 16 8 4 2 1
		 	10진수 5를 2진수 변환 -> 				   1 0 1
		 	10진수 9를 2진수 변환 ->				 1 0 0 1
		 	10진수 35를 2진수 변환 ->			1  0 0 0 0 1
		 	
		 */
		
		//bit연산자
		
		//1)비트곱, 비트합 연산자
		System.out.println(5&3);  //1
		System.out.println(5|3);  //7
		/*
		
		*/  
		
		  //2) 비트 부정 연산자
		   System.out.println(~5); //l의 보수 연산자
		   //~00000101
		   // 11111010
		   
		   //3) shift 연산자
		   //3은 이동 bit수
		   System.out.println(16<<3);  //128   left  shift  16*2의3승
		   System.out.println(16>>3);  //2     right shift  16/2의3승
		   
		   
		   
 
	}

}
