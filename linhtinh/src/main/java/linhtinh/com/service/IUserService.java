package linhtinh.com.service;

import linhtinh.com.model.UserModel;

public interface IUserService {
	UserModel login(String username, String password);

	UserModel FindByUserName(String username);

	void insert(UserModel user);

	boolean register(String username, String password, String fullname, String email, String phone);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);

	boolean changePass(String password, String email);
}
