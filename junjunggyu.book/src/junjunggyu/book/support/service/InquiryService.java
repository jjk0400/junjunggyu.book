package junjunggyu.book.support.service;

import java.util.List;

import junjunggyu.book.support.domain.Inquiry;

public interface InquiryService {
	List<Inquiry> getInquirys();
	Inquiry getInquiry(int InquiryNum);
	int addInquiry(Inquiry inquiry);
}
