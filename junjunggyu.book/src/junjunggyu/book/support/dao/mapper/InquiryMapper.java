package junjunggyu.book.support.dao.mapper;

import java.util.List;

import junjunggyu.book.support.domain.Inquiry;

public interface InquiryMapper {
	List<Inquiry> getInquirys();
	Inquiry getInquiry(int InquiryNum);
	int addInquiry(Inquiry inquiry);
}
