package junjunggyu.book.book.service;

import junjunggyu.book.book.dao.AdminDao;
import junjunggyu.book.book.dao.AdminDaoImpl;
import junjunggyu.book.book.domain.Admin;

public class AdminServiceImpl implements AdminService {
	private AdminDao adminDao;
	
	public AdminServiceImpl() {
		this.adminDao = new AdminDaoImpl();
	}
	
	public Admin getAdmin(String adminId) {
		return adminDao.getAdmin(adminId);
	}
	
	
}
