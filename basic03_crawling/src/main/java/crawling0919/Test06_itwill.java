package crawling0919;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Test06_itwill {

	public static void main(String[] args) {
		//연습) 아이티윌 웹페이지의 공지사항 제목만 크롤링
		//     ->URL에 웹페이지 경로가 나오지 않는 경우
		
		try {
			
			String URL 		= "https://www.itwill.co.kr/cmn/board/BBSMSTR_000000000071/bbsList.do";
			//String params   = "?bbsId=BBSMSTR_000000000071&currentMenuNo=1031100&pageIndex=3&searchCondition=0&searchKeyword=";
			String params   = "?bbsId=BBSMSTR_000000000071&currentMenuNo=1031100&searchCondition=0&searchKeyword=";
			
			for(int p=1; p<=5; p++) {
				String page = "&pageIndex=" + p;
				//System.out.println(params + page);
				
				Document doc = Jsoup.connect(URL+params+page).get();
				//System.out.println(doc.toString());
				
				//방법1
				Elements elements = doc.select(".bgcol01");
				elements.select(".ac").remove();
				
				//방법2
				//Elements elements = doc.select(".bgcol01>td:nth-child(2)");
				
				//방법3
				//Elements elements = doc.select(".bgcol01 td a");
				
				//방법4
				//Elements elements = doc.select(".bgcol01 a");
				
				for(Element element : elements) {
					System.out.println((element.text()));
				}
				
			 }//for end
			
		} catch (Exception e) {
			System.out.println("크롤링 실패 : " + e);
		}//end
			
	
	}//main() end
}//class end


