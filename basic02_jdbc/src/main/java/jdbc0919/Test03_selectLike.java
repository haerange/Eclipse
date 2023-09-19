package jdbc0919;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Test03_selectLike {

	public static void main(String[] args) {
		//Like 연산자 연습
		//문제) 이름에 '차' 문자 있는 행을 조회하시오
		String col = "uname";   //검색칼럼 keyfield
		String word = "차";		//검색어 keyword
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user= "system";
			String password = "1234";
			String driver = "oracle.jdbc.driver.OracleDriver";
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			System.out.println("오라클DB 서버 연결 성공!!");
			
			StringBuilder sql = new StringBuilder();
			sql.append(" SELECT sno, uname, kor, eng, mat, tot, aver, addr, wdate ");
			sql.append(" FROM sungjuk ");
			
			//검색어가 존재하는지?
			word = word.trim();
			if(word.length()>0) {
				//where uname like '%차%'
				String where = " WHERE " + col + " LIKE '%" + word + "%'";
				sql.append(where);
			}
			
			sql.append(" ORDER BY sno DESC ");
			
			//System.out.println(sql.toString());
			
			pstmt = con.prepareStatement(sql.toString());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {  //cursor가 있는지?
				System.out.println("자료 있음~");
				
				do {
					System.out.print(rs.getInt("sno") + " ");
					System.out.print(rs.getString("uname") + " ");
					System.out.print(rs.getInt("kor") + " ");
					System.out.print(rs.getInt("eng") + " ");
					System.out.print(rs.getInt("mat") + " ");
					System.out.print(rs.getInt("tot") + " ");
					System.out.print(rs.getInt("aver") + " ");
					System.out.print(rs.getString("addr") + " ");
					System.out.print(rs.getString("wdate") + " ");
					System.out.println();
				}while(rs.next());  //다음 cursor가 있는지?
				
			}else {
				System.out.println("자료 없음!");
			}
			
			
		
		
		}catch (Exception e) {
			System.out.println("오라클 JDBC 조회 실패 : " + e);
		}finally {  //자원반납(순서주의)
			try {
				if(rs!=null) {rs.close();}
			}catch (Exception e) {}
			
			try {
				
				if(pstmt!=null) {pstmt.close();}
			}catch (Exception e) {}
			
			try {
				if(con!=null) {con.close();}
			}catch (Exception e) {}
		}//try end
		
		
	}//main() end
}//class end
