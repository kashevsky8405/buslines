package com.kashevsky.buslines.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kashevsky.buslines.model.User;
import java.util.List;


public interface UserDao extends JpaRepository<User, Long>{
	
    User findByUsername(String username);

    User getByUsername(String username);
    
    List<User> findAll();
    

}
