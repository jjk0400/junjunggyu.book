package junjunggyu.book.support.service;

import java.util.List;

import junjunggyu.book.support.dao.InquiryDao;
import junjunggyu.book.support.dao.InquiryDaoImpl;
import junjunggyu.book.support.domain.Inquiry;

public class InquiryServiceImpl implements InquiryService {
	private InquiryDao inquiryDao;
	
	public InquiryServiceImpl() {
		this.inquiryDao = new InquiryDaoImpl();
	}

	@Override
	public List<Inquiry> getInquirys() {
		return inquiryDao.getInquirys();
	}

	@Override
	public Inquiry getInquiry(int InquiryNum) {
		return inquiryDao.getInquiry(InquiryNum);
	}

	@Override
	public int addInquiry(Inquiry inquiry) {
		return inquiryDao.addInquiry(inquiry);
	}
	
	
}
