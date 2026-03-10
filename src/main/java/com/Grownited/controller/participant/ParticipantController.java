package com.Grownited.controller.participant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Grownited.entity.HackathonEntity;
import com.Grownited.repository.HackathonRepository;


@Controller
public class ParticipantController {

    @Autowired
    HackathonRepository hackathonRepository;
   

    @GetMapping("/participant/hackathon")
    public String viewHackathon(Integer id, Model model) {

        HackathonEntity hackathon = hackathonRepository.findById(id).orElse(null);

        model.addAttribute("hackathon", hackathon);

        return "participant/ViewHackathon";
    }

    @GetMapping("/participant/home")
    public String home(Model model) {
        model.addAttribute("hackathons", hackathonRepository.findAll());
        return "participant/Home";
    }
    
  
}