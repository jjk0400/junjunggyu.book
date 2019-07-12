package junjunggyu.book.support.service;

import java.util.List;

import junjunggyu.book.support.dao.NoticeDao;
import junjunggyu.book.support.dao.NoticeDaoImpl;
import junjunggyu.book.support.domain.Notice;

public class NoticeServiceImpl implements NoticeService {
	private NoticeDao noticeDao;
	
	public NoticeServiceImpl() {
		this.noticeDao = new NoticeDaoImpl();
	}
	
	public List<Notice> getNotices() {
		return noticeDao.getNotices();
	}
	
	public Notice getNotice(int noticeNum) {
		return noticeDao.getNotice(noticeNum);
	}
	
	public boolean addNotice(Notice notice) {
		return noticeDao.addNotice(notice)>0;
	}
}
