package junjunggyu.book.book.dao;

import junjunggyu.book.book.dao.mapper.AdminMapper;
import junjunggyu.book.book.domain.Admin;
import junjunggyu.book.config.Configuration;

public class AdminDaoImpl implements AdminDao {
	private AdminMapper adminMapper;
	
	public AdminDaoImpl() {
		this.adminMapper = Configuration.getMapper(AdminMapper.class);
	}
	
	public Admin getAdmin(String adminId) {
		return adminMapper.getAdmin(adminId);
	}
}
