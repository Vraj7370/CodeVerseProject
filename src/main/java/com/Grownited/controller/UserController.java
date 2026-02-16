package com.Grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Grownited.entity.UserDetailEntity;
import com.Grownited.entity.UserEntity;
import com.Grownited.repository.UserDetailRepository;
import com.Grownited.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	UserDetailRepository userDetailRepository;

	@GetMapping("listUser")
	public String listUser(Model model) {

		List<UserEntity> allUser = userRepository.findAll();
		model.addAttribute("userList", allUser);
		return "ListUser";
	}

	@GetMapping("viewUser")
	public String viewUser(Integer userId, Model model) {

	    UserEntity user = userRepository.findById(userId).orElse(null);
	    UserDetailEntity userDetail = userDetailRepository.findByUserId(userId).orElse(null);

	    if (user == null) {
	        return "redirect:/listUser";
	    }

	    model.addAttribute("user", user);
	    model.addAttribute("userDetail", userDetail);

	    return "ViewUser";
	}
	
	@GetMapping("deleteUser")
	public String deleteUser(Integer userId) {


	    userDetailRepository.deleteById(userId);

	    userRepository.deleteById(userId);

	    return "redirect:/listUser";
	}
	
	

}