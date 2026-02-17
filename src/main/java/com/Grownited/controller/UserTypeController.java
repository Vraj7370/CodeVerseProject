package com.Grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.Grownited.entity.UserTypeEntity;
import com.Grownited.repository.UserRepository;
import com.Grownited.repository.UserTypeRepository;

@Controller
public class UserTypeController {

	// Singleton design pattern
	@Autowired
	UserTypeRepository userTypeRepository;

	@Autowired
	UserRepository userRepository;

	@GetMapping("newUserType")
	public String newUserType() {
		return "NewUserType";
	}

	@PostMapping("saveUserType")
	public String saveUserType(UserTypeEntity userTypeEntity) {
		userTypeRepository.save(userTypeEntity);
		return "AdminDashboard";
	}

	@GetMapping("listUserType")
	public String listUserType(Model model) {

		List<UserTypeEntity> allUserType = userTypeRepository.findAll();
		model.addAttribute("userTypeList", allUserType);
		return "ListUserType";
	}
	
	@GetMapping("deleteUserType")
	public String deleteUserType(Integer userTypeId) {

		userTypeRepository.deleteById(userTypeId);

		return "redirect:/listUserType";
	}

}