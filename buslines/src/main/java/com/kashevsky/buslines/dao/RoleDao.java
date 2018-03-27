package com.kashevsky.buslines.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kashevsky.buslines.model.Role;

public interface RoleDao extends JpaRepository<Role, Long>{
}
