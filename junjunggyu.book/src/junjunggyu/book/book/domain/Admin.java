package junjunggyu.book.book.domain;

public class Admin {
	private String adminId;
	private String adminPw;
	private String adminName;
	private int adminNum;
	
	public Admin(){}
	
	public Admin(String adminId, String adminPw, String adminName, int adminNum) {
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminNum = adminNum;
		this.adminPw = adminPw;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPw() {
		return adminPw;
	}

	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public int getAdminNum() {
		return adminNum;
	}

	public void setAdminNum(int adminNum) {
		this.adminNum = adminNum;
	};
}
