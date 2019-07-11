package junjunggyu.book.support.domain;

import java.sql.Date;

public class Board {
	private String boardTitle;
	private String boardContent;
	private Date boardData;
	private String boardUserId;
	private int boardNum;
	
	public Board(){}

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

	public Date getBoardData() {
		return boardData;
	}

	public void setBoardData(Date boardData) {
		this.boardData = boardData;
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
