package com.luv2code.springsecurity.demo.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.luv2code.springsecurity.demo.dto.UserDTO;
import com.luv2code.springsecurity.demo.entity.User;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(UserDTO userDTO);
}
