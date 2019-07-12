package junjunggyu.book.support.dao;

import java.util.List;

import junjunggyu.book.support.domain.Notice;

public interface NoticeDao {
	List<Notice> getNotices();
	Notice getNotice(int noticeNum);
	int addNotice(Notice notice);
}
