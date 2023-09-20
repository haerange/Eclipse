package crawling0919;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Test04_egovframe {

	public static void main(String[] args) {

//연습) 전자정부표준프레임워크 공지사항 (1~23페이지) 제목만 크롤링하기
	
		try {
			
			String URL 		= "https://www.egovframe.go.kr/home/ntt/nttList.do";
			String params   = "?searchKey=&searchValue=&menuNo=74&bbsId=6";
			
			
			//공지사항 HTML 페이지 1~23 페이지 소스 가져오기
			for(int p=0; p<=220; p+=10) {
				String page = "&pagerOffset=" + p;
				Document doc = Jsoup.connect(URL+params+page).get();
				
				/*
				//HTML문서에서 class="lnk" 적용된 요소들 가져오기
				Elements elements = doc.select(".lnk");
				
				for(Element element : elements) { //for(개별요소 : 덩어리)
					System.out.println(element.text());
				}//for end
				*/
				
				/*
				 	<div class="list_item">
				 		<div class="al"></div>
				 	</div>
				 	
				 	<div class="list_item">
				 		<div class="al"></div>
				 	</div>
				 */
				
				Elements elements = doc.select(".list_item");
				elements.select(".al").remove();  //clss="al" 요소 제거하기
				for(Element element : elements) {
					System.out.println(element.text());
				}
				
				
				
			}//for end
			
		}catch (Exception e) {
			System.out.println("크롤링 실패 : " + e);
		}//end
		
		
	}//main() end
}//class end
