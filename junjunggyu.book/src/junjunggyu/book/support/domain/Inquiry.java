package junjunggyu.book.support.domain;

import java.sql.Date;

public class Inquiry {
	private String inquiryTitle;
	private String inquiryContent;
	private Date inquiryDate;
	private String inquiryUserId;
	private int inquiryNum;
	
	public Inquiry(){}
	
	public Inquiry(String inquiryTitle, String inquiryContent, String inquiryUserId) {
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryUserId = inquiryUserId;
	}

	public String getInquiryTitle() {
		return inquiryTitle;
	}

	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}

	public Date getInquiryDate() {
		return inquiryDate;
	}

	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}

	public String getInquiryUserId() {
		return inquiryUserId;
	}

	public void setInquiryUserId(String inquiryUserId) {
		this.inquiryUserId = inquiryUserId;
	}

	public int getInquiryNum() {
		return inquiryNum;
	}

	public void setInquiryNum(int inquiryNum) {
		this.inquiryNum = inquiryNum;
	}
}
