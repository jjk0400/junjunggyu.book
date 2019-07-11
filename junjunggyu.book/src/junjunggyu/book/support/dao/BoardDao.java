package junjunggyu.book.support.dao;

import java.util.List;

import junjunggyu.book.support.domain.Board;

public interface BoardDao {
	List<Board> getBoards();
	Board getBoard(int boardNum);
	int addBoard(Board board);
}
