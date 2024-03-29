package junjunggyu.book.support.dao.mapper;

import java.util.List;

import junjunggyu.book.support.domain.Board;

public interface BoardMapper {
	List<Board> getBoards();
	Board getBoard(int boardNum);
	int addBoard(Board board);
}
