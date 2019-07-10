package junjunggyu.book.user.domain;

import java.sql.Date;

public class User {
	private int userNum;
	private String userName;
	private String userId;
	private String userPw;
	private String userPhone;
	private String userGender;
	private Date userDate;
	
	public User(){};
	
	public User(String userName, String userId, String userPw, String userPhone,String userGender) {
		this.userName = userName;
		this.userId = userId;
		this.userPw = userPw;
		this.userPhone = userPhone;
		this.userGender = userGender;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public Date getUserDate() {
		return userDate;
	}

	public void setUserDate(Date userDate) {
		this.userDate = userDate;
	}
}
