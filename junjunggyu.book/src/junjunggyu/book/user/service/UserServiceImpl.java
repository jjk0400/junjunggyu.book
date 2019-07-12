package junjunggyu.book.user.service;

import java.util.List;

import junjunggyu.book.user.dao.UserDao;
import junjunggyu.book.user.dao.UserDaoImpl;
import junjunggyu.book.user.domain.User;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	
	public UserServiceImpl(){
		this.userDao = new UserDaoImpl();
	}
	
	public List<User> getUsers() {
		return userDao.getUsers();
	}
	
	public User getUser(String userId) {
		return userDao.getUser(userId);
	}
	
	public boolean addUser(User user){
		return userDao.addUser(user) > 0;
	}
	
	public boolean updateUser(int userNum) {
		return userDao.updateUser(userNum) >0;
	}
	
	public boolean delUser(int userNum) {
		return userDao.delUser(userNum) >0;
	}
	
	public boolean changePw(User user){	
		return userDao.changePw(user) >0;	
	}
	
	public boolean modifyUser(User user){
		return userDao.modifyUser(user)>0;
	}
	
	public boolean secedeUser(String userId){
		return userDao.secedeUser(userId)>0;
	}
}
