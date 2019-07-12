package junjunggyu.book.support.dao;

import java.util.List;

import junjunggyu.book.config.Configuration;
import junjunggyu.book.support.dao.mapper.InquiryMapper;
import junjunggyu.book.support.domain.Inquiry;

public class InquiryDaoImpl implements InquiryDao {
	private InquiryMapper inquiryMapper;
	
	public InquiryDaoImpl() {
		this.inquiryMapper = Configuration.getMapper(InquiryMapper.class);
	}

	@Override
	public List<Inquiry> getInquirys() {
		return inquiryMapper.getInquirys();
	}

	@Override
	public Inquiry getInquiry(int InquiryNum) {
		return inquiryMapper.getInquiry(InquiryNum);
	}

	@Override
	public int addInquiry(Inquiry inquiry) {
		return inquiryMapper.addInquiry(inquiry);
	}
	
	
}
