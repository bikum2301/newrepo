package linhtinh.com.dao;

import java.util.List;

import linhtinh.com.model.UserModel;

public interface IUserDao {
	List<UserModel> findAll();

	UserModel findById(int iduser);

	UserModel findByUsername(String username);

	void insert(UserModel user);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);

	void changePass(String password, String email);
}
