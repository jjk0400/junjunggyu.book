package junjunggyu.book.support.domain;

import java.sql.Date;

public class Notice {
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	private String noticeAdminId;
	private int noticeNum;
	
	public Notice() {};
	
	public Notice(String noticeTitle,String noticeContent,String noticeAdminId) {
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeAdminId = noticeAdminId;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getNoticeAdminId() {
		return noticeAdminId;
	}

	public void setNoticeAdminId(String noticeAdminId) {
		this.noticeAdminId = noticeAdminId;
	}

	public int getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}
}
