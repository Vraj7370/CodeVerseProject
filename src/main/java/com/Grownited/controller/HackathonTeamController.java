package com.Grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Grownited.entity.HackathonTeamEntity;
import com.Grownited.repository.HackathonTeamRepository;
import com.Grownited.repository.HackathonRepository;
import com.Grownited.repository.UserRepository;

@Controller
public class HackathonTeamController {

	@Autowired
	HackathonTeamRepository hackathonTeamRepository;

	@Autowired
	HackathonRepository hackathonRepository;

	@Autowired
	UserRepository userRepository;

	// Open Form
	@GetMapping("newHackathonTeam")
	public String newHackathonTeam(Model model) {

		model.addAttribute("hackathonList", hackathonRepository.findAll());

		model.addAttribute("userList", userRepository.findAll());

		return "NewHackathonTeam";
	}

	// Save
	@PostMapping("saveHackathonTeam")
	public String saveHackathonTeam(HackathonTeamEntity teamEntity) {

		hackathonTeamRepository.save(teamEntity);

		return "AdminDashboard";
	}

	// List
	@GetMapping("listHackathonTeam")
	public String listHackathonTeam(Model model) {

		List<HackathonTeamEntity> teamList = hackathonTeamRepository.findAll();

		model.addAttribute("teamList", teamList);

		return "ListHackathonTeam";
	}

	// Delete
	@GetMapping("deleteHackathonTeam")
	public String deleteHackathonTeam(Integer hackathonTeamId) {

		hackathonTeamRepository.deleteById(hackathonTeamId);

		return "redirect:/listHackathonTeam";
	}
}