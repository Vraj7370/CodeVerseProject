package com.Grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Grownited.entity.HackathonEntity;
import com.Grownited.entity.UserTypeEntity;
import com.Grownited.repository.HackathonRepository;
import com.Grownited.repository.UserTypeRepository;

@Controller  // MVC Controller to handle requests
public class HackathonController {

	@Autowired  // Inject HackathonRepository
	HackathonRepository hackathonRepository;
	
	@Autowired  // Inject UserTypeRepository
	UserTypeRepository userTypeRepository; 
	
	// Load New Hackathon form
	@GetMapping("newHackathon")
	public String newHackathon(Model model) {
		List<UserTypeEntity> allUserType = userTypeRepository.findAll();
		model.addAttribute("allUserType", allUserType);
		return "NewHackathon";
	}
	
	// Save Hackathon (Create)
	@PostMapping("saveHackathon")
	public String saveHackathon(HackathonEntity hackathonEntity) {
		hackathonRepository.save(hackathonEntity);
		return "redirect:/listHackathon";
	}

	// List all Hackathons (Read)
	@GetMapping("listHackathon")
	public String listHackathon(Model model) {
		List<HackathonEntity> allHackthon = hackathonRepository.findAll();
		model.addAttribute("allHackthon", allHackthon);
		return "ListHackathon";
	}
	
	// Delete Hackathon by ID
	@GetMapping("deleteHackathon")
	public String deleteHackathon(Integer hackathonId) {
		hackathonRepository.deleteById(hackathonId);
		return "redirect:/listHackathon";
	}	
	
	// View single Hackathon by ID
	@GetMapping("viewHackathon")
	public String viewHackathon(Integer hackathonId, Model model) {

	    HackathonEntity hackathon = hackathonRepository.findById(hackathonId).orElse(null);

	    if (hackathon == null) {
	        return "redirect:/listHackathon";
	    }
	    model.addAttribute("hackathon", hackathon);
	    return "ViewHackathon";
	}
}