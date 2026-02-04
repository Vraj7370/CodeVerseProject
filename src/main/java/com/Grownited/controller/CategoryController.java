package com.Grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Grownited.entity.CategoryEntity;
import com.Grownited.repository.CategoryRepository;

//JPA -> specification  

@Controller
public class CategoryController {

	@Autowired // inject 
	CategoryRepository categoryRepository; 
	
	@GetMapping("newCategory")
	public String newCategory() {
		return "NewCategory";
	}

	
	@PostMapping("saveCategory")
	public String saveCategory(CategoryEntity categoryEntity) {

		categoryEntity.setActive(true);
		//insert 
		categoryRepository.save(categoryEntity); 
		return "AdminDashboard";
	}
	

}