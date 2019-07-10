package junjunggyu.book.user.dao;

import java.util.List;

import junjunggyu.book.user.domain.User;

public interface UserDao {
	List<User> getUsers();
	User getUser(String userId);
	int addUser(User user);
	int updateUser(int userNum);
	int delUser(int userNum);
}
