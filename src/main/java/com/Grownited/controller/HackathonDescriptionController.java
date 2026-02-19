package com.Grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Grownited.entity.HackathonDescriptionEntity;
import com.Grownited.repository.HackathonDescriptionRepository;

@Controller
public class HackathonDescriptionController {

    @Autowired
    HackathonDescriptionRepository hackathonDescriptionRepository;

    
    // Open Form Page
    @GetMapping("newHackathonDescription")
    public String newHackathonDescription() {
        return "NewHackathonDescription";
    }

    
    // Save Data
    @PostMapping("saveHackathonDescription")
    public String saveHackathonDescription(HackathonDescriptionEntity hackathonDescriptionEntity) {

        hackathonDescriptionRepository.save(hackathonDescriptionEntity);

        return "AdminDashboard";
    }

    
    // List Page
    @GetMapping("listHackathonDescription")
    public String listHackathonDescription(Model model) {

        List<HackathonDescriptionEntity> descriptionList =
                hackathonDescriptionRepository.findAll();

        model.addAttribute("descriptionList", descriptionList);

        return "ListHackathonDescription";
    }

    
    // Delete
    @GetMapping("/deleteHackathonDescription")
    public String deleteHackathonDescription(Integer hackathonDescriptionId) {

        hackathonDescriptionRepository.deleteById(hackathonDescriptionId);

        return "redirect:/listHackathonDescription";
    }
}