package junjunggyu.book.support.dao.mapper;

import java.util.List;

import junjunggyu.book.support.domain.Notice;

public interface NoticeMapper {
	List<Notice> getNotices();
	Notice getNotice(int noticeNum);
	int addNotice(Notice notice);
}
