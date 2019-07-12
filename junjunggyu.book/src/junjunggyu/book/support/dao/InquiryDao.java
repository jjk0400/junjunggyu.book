package junjunggyu.book.support.dao;

import java.util.List;

import junjunggyu.book.support.domain.Inquiry;

public interface InquiryDao {
	List<Inquiry> getInquirys();
	Inquiry getInquiry(int InquiryNum);
	int addInquiry(Inquiry inquiry);
}
