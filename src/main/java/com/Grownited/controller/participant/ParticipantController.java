package com.Grownited.controller.participant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Grownited.entity.HackathonEntity;
import com.Grownited.repository.HackathonRepository;
import com.Grownited.repository.UserTypeRepository;


@Controller
public class ParticipantController {

    @Autowired
    HackathonRepository hackathonRepository;
    
    @Autowired
    UserTypeRepository userTypeRepository;

    
    
    @GetMapping("/participant/login")
    public String login() {
        return "participant/Login";
    }
   
    @GetMapping("/participant/signup")
    public String signup() {
        return "participant/Signup";
    }


    @GetMapping("/participant/hackathon")
    public String viewHackathon(Integer id, Model model) {

        HackathonEntity hackathon = hackathonRepository.findById(id).orElse(null);

        model.addAttribute("hackathon", hackathon);
        model.addAttribute("allUserType", userTypeRepository.findAll());

        return "participant/ViewHackathon";
    }

    @GetMapping("/participant/home")
    public String home(Model model) {
        model.addAttribute("hackathons", hackathonRepository.findAll());
        model.addAttribute("allUserType", userTypeRepository.findAll());
        return "participant/Home";
    }
    
  
}