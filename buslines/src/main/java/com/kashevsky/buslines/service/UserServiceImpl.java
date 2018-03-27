 package com.kashevsky.buslines.service;

import com.kashevsky.buslines.dao.RoleDao;
import com.kashevsky.buslines.dao.UserDao;
import com.kashevsky.buslines.model.Role;
import com.kashevsky.buslines.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Autowired
    private RoleDao roleDao;
    @Autowired

    private BCryptPasswordEncoder bCryptPasswordEncoder;
    /*
    @Resource(name="sessionFactory")
    private SessionFactory sessionFactory;*/
    
    @Override
    public void save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Set<Role> roles = new HashSet<>();
        roles.add(roleDao.getOne(1L));
        user.setRoles(roles);
        userDao.save(user);
    }
    
    @Override
    public List<User> getAll(){
    	return userDao.findAll();
    }
    

    @Override
    public User findByUsername(String username) {
        return userDao.findByUsername(username);
    }
    
    @Override
    public User getByUsername(String username) {
    	
        return userDao.getByUsername(username);
    }

	@Override
	public void update(User user, 
    		String username, 
    		String name, 
    		String surename, 
    		String email, 
    		String phoneNumber, 
    		String cardNumber) {
		

		user.setId(user.getId());
		user.setUsername(username);
		user.setPassword(user.getPassword());
		user.setName(name);
		user.setSurename(surename);
		user.setEmail(email);
		user.setPhoneNumber(phoneNumber);
		user.setCardNumber(cardNumber);
		user.setRoles(user.getRoles());
		userDao.save(user);
		
	}

	@Override
	public String GetPrincipalUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
   	 
        Object obj = auth.getPrincipal();
        String userName = "";
 
        if (obj instanceof UserDetails) {
            userName = ((UserDetails) obj).getUsername();
        } else {
            userName = obj.toString();
        }
		return userName;
	}



}