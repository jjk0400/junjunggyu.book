package junjunggyu.book.support.service;

import java.util.List;

import junjunggyu.book.support.domain.Notice;

public interface NoticeService {
	List<Notice> getNotices();
	Notice getNotice(int noticeNum);
	boolean addNotice(Notice notice);
}
