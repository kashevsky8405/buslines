package com.kashevsky.buslines.service;

import com.kashevsky.buslines.model.User;

import java.util.List;


public interface UserService {
    void save(User user);

    void update(User user, 
    		String username, 
    		String name, 
    		String surename, 
    		String email, 
    		String phoneNumber, 
    		String cardNumber);
    
    String GetPrincipalUser();
    
    List<User> getAll();

    User findByUsername(String username);
    
    User getByUsername(String username);

}
