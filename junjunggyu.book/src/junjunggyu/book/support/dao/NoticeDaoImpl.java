package junjunggyu.book.support.dao;

import java.util.List;

import junjunggyu.book.config.Configuration;
import junjunggyu.book.support.dao.mapper.NoticeMapper;
import junjunggyu.book.support.domain.Notice;

public class NoticeDaoImpl implements NoticeDao{
	private NoticeMapper noticeMapper;
	
	public NoticeDaoImpl() {
		this.noticeMapper = Configuration.getMapper(NoticeMapper.class); 
	}
	
	public List<Notice> getNotices() {
		return noticeMapper.getNotices(); 
	}
	
	public Notice getNotice(int noticeNum) {
		return noticeMapper.getNotice(noticeNum);
	}
	
	public int addNotice(Notice notice) {
		return noticeMapper.addNotice(notice);
	}
}
