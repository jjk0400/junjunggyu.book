package junjunggyu.book.support.service;

import java.util.List;

import junjunggyu.book.support.dao.BoardDao;
import junjunggyu.book.support.dao.BoardDaoImpl;
import junjunggyu.book.support.domain.Board;

public class BoardServiceImpl implements BoardService {
	private BoardDao boardDao;
	
	public BoardServiceImpl() {
		this.boardDao = new BoardDaoImpl(); 
	}
	
	public List<Board> getBoards() {
		return boardDao.getBoards();
	}
}
