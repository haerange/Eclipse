package net.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBOpen {
	
	//오라클 데이터베이스 연결 메소드
	public Connection getConnection() {
		Connection con = null;
		try {
			/* 오라클 DB 연결 정보
			String url 		="jdbc:oracle:thin:@localhost:1521:xe";
			String user		="system";
			String password ="1234";
			String driver	="oracle.jdbc.driver.OracleDriver";
			*/
			
			/* cafe24서버 mariaDB 연결 정보 */
			String url      = "jdbc:mysql://localhost/haerang99";
		    String user     = "haerang99";
		    String password = "qwer3233@";
		    String driver   = "org.gjt.mm.mysql.Driver";
			
			
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			
		
		}catch (Exception e) {
			System.out.println("오라클DB연결실패: " + e);
		}//end
			return con;
	}//getConnection() end
}//class end
