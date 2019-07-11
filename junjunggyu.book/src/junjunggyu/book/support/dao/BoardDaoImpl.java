package junjunggyu.book.support.dao;

import java.util.List;

import junjunggyu.book.config.Configuration;
import junjunggyu.book.support.dao.mapper.BoardMapper;
import junjunggyu.book.support.domain.Board;

public class BoardDaoImpl implements BoardDao{
	private BoardMapper boardMapper;
	
	public BoardDaoImpl() {
		boardMapper = Configuration.getMapper(BoardMapper.class);
	}
	
	public List<Board> getBoards() {
		return boardMapper.getBoards();
	}
	
	public int addBoard(Board board) {
		return boardMapper.addBoard(board);
	}
	
	public Board getBoard(int boardNum) {
		return boardMapper.getBoard(boardNum);
	}
}
