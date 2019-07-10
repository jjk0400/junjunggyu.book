package junjunggyu.book.user.service;

import java.util.List;

import junjunggyu.book.user.domain.User;

public interface UserService {
	List<User> getUsers();
	User getUser(String userId);
	boolean addUser(User user);
	boolean updateUser(int userNum);
	boolean delUser(int userNum);
}
