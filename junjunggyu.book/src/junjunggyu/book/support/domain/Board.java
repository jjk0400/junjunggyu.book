package junjunggyu.book.support.domain;

import java.sql.Date;

public class Board {
	private String boardTitle;
	private String boardContent;
	private Date boardDate;
	private String boardUserId;
	private int boardNum;
	
	public Board(){}
	
	public Board(String boardTitle, String boardContent, String boardUserId) {
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardUserId = boardUserId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public String getBoardUserId() {
		return boardUserId;
	}

	public void setBoardUserId(String boardUserId) {
		this.boardUserId = boardUserId;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	};
}
