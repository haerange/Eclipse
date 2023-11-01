package net.member;
//sql 문에서 테이블 복붙해와서 뒷문장 지우고 복붙!
public class MemberDTO {  //Data Transfer Object 전송객체
		
		//멤버변수 field
	    private String id;       
	    private String passwd;  
	    private String mname; 
	    private String tel;   
	    private String email;    
	    private String zipcode;		//우편번호
	    private String address1;	//주소
	    private String address2;	//나머지 주소
	    private String job;	
	    private String mlevel;		//등급
	    private String mdate;    	
	    
	    //기본생성자 default constructor    (source > getter and setters 클릭)
	    //								  (source > tostring()  클릭)
	    public MemberDTO() {}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getPasswd() {
			return passwd;
		}

		public void setPasswd(String passwd) {
			this.passwd = passwd;
		}

		public String getMname() {
			return mname;
		}

		public void setMname(String mname) {
			this.mname = mname;
		}

		public String getTel() {
			return tel;
		}

		public void setTel(String tel) {
			this.tel = tel;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getZipcode() {
			return zipcode;
		}

		public void setZipcode(String zipcode) {
			this.zipcode = zipcode;
		}

		public String getAddress1() {
			return address1;
		}

		public void setAddress1(String address1) {
			this.address1 = address1;
		}

		public String getAddress2() {
			return address2;
		}

		public void setAddress2(String address2) {
			this.address2 = address2;
		}

		public String getJob() {
			return job;
		}

		public void setJob(String job) {
			this.job = job;
		}

		public String getMlevel() {
			return mlevel;
		}

		public void setMlevel(String mlevel) {
			this.mlevel = mlevel;
		}

		public String getMdate() {
			return mdate;
		}

		public void setMdate(String mdate) {
			this.mdate = mdate;
		}

		@Override
		public String toString() {
			return "MemberDTO [id=" + id + ", passwd=" + passwd + ", mname=" + mname + ", tel=" + tel + ", email="
					+ email + ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2 + ", job="
					+ job + ", mlevel=" + mlevel + ", mdate=" + mdate + "]";
		}
	    
	    
		
}//class end