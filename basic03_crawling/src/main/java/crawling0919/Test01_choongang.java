package crawling0919;



import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class Test01_choongang {

	public static void main(String[] args) {
		//참조 http://pretyimo.cafe24.com/lectureRead.do?lectureno=333
		//크롤링(Crawling), 스크래핑(Scraping)
		//->개인 혹은 단체에서 필요한 데이터가 있는 웹(Web)페이지의 구조를 분석하고 파악하여 긁어옵니다.
		
		
		//연습) 중앙정보처리학원의 공지사항 웹페이지 소스 가져오기
		try {
			
			String URL = "https://www.choongang.co.kr/html/sub07_01_n.php";
			
			//웹페이지 소스 가져오기
			Document doc = Jsoup.connect(URL).get();
			System.out.println(doc.toString());
			
			
		}catch (Exception e) {
			System.out.println("크롤링 실패 : " + e);
		}//end
		
	}//main() end
}//class end
