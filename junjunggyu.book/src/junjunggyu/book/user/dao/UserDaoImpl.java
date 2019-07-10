package junjunggyu.book.user.dao;

import java.util.List;

import junjunggyu.book.user.dao.mapper.UserMapper;
import junjunggyu.book.user.domain.User;
import junjunggyu.book.config.Configuration;

public class UserDaoImpl implements UserDao {
	private UserMapper userMapper;
		
	public UserDaoImpl(){
		this.userMapper = Configuration.getMapper(UserMapper.class);
	}
	
	@Override
	public List<User> getUsers() {
		return userMapper.getUsers();
	}

	@Override
	public User getUser(String userId) {
		return userMapper.getUser(userId);
	}

	@Override
	public int addUser(User user) {
		return userMapper.addUser(user);
	}

	@Override
	public int updateUser(int userNum) {
		return userMapper.updateUser(userNum);
	}

	@Override
	public int delUser(int userNum) {
		return userMapper.delUser(userNum);
	}
}
