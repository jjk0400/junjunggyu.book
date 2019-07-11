package junjunggyu.book.support.service;

import java.util.List;

import junjunggyu.book.support.domain.Board;

public interface BoardService {
	List<Board> getBoards();
	Board getBoard(int boardNum);
	boolean addBoard(Board board);
}
