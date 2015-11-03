package cn.uzz.dao;

import java.util.List;

import cn.uzz.entity.User;




public interface UserDao {
	
	
	public List<User> findByName(String username ,String password);
	
	public void insert(String username,String password);
	

}
