package jdbc0919;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Test04_selectPaging {

	public static void main(String[] args) {
		//페이징
		//문제) sungjuk 테이블에서 이름순으로 정렬 후 행번호 4~6만 조회하시오
		int start=4;	//시작 행번호
		int end=6;		//끝 행번호
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String url      = "jdbc:oracle:thin:@localhost:1521:xe";
			String user     = "system";
			String password = "1234";
			String driver   = "oracle.jdbc.driver.OracleDriver";
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			System.out.println("오라클DB 서버 연결 성공!!");
			
			StringBuilder sql = new StringBuilder();
			sql.append(" SELECT * ");
			sql.append(" FROM ( ");
			sql.append("		SELECT sno, uname, aver, addr, rownum as rnum ");
			sql.append("		FROM ( ");
			sql.append("			SELECT sno, uname, aver, addr ");
			sql.append("			FROM sungjuk ");
			sql.append("			ORDER BY uname ");
			sql.append("	    	) ");
			sql.append("	 	) ");
			sql.append(" WHERE rnum>=? AND rnum<=? ");
			
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {  //cursor가 있는지?
				System.out.println("자료 있음~");
				
				do {
					System.out.print(rs.getInt("sno") + " ");
					System.out.print(rs.getString("uname") + " ");
					System.out.print(rs.getInt("aver") + " ");
					System.out.print(rs.getString("addr") + " ");
					System.out.print(rs.getInt("rnum") + " ");
					System.out.println();
				}while(rs.next());
				
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
