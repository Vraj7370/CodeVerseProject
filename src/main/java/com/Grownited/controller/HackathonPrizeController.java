package com.Grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Grownited.entity.HackathonPrizeEntity;
import com.Grownited.entity.HackathonEntity;
import com.Grownited.repository.HackathonPrizeRepository;
import com.Grownited.repository.HackathonRepository;

@Controller
public class HackathonPrizeController {

    @Autowired
    HackathonPrizeRepository hackathonPrizeRepository;

    @Autowired
    HackathonRepository hackathonRepository;


    // Open Form
    @GetMapping("newHackathonPrize")
    public String newHackathonPrize(Model model) {

        List<HackathonEntity> hackathonList =
                hackathonRepository.findAll();

        model.addAttribute("hackathonList", hackathonList);

        return "NewHackathonPrize";
    }


    // Save
    @PostMapping("saveHackathonPrize")
    public String saveHackathonPrize(HackathonPrizeEntity prizeEntity) {

        hackathonPrizeRepository.save(prizeEntity);

        return "AdminDashboard";
    }


    // List
    @GetMapping("listHackathonPrize")
    public String listHackathonPrize(Model model) {

        List<HackathonPrizeEntity> prizeList =
                hackathonPrizeRepository.findAll();

        model.addAttribute("prizeList", prizeList);

        return "ListHackathonPrize";
    }


    // Delete
    @GetMapping("deleteHackathonPrize")
    public String deleteHackathonPrize(Long hackathonPrizeId) {

        hackathonPrizeRepository.deleteById(hackathonPrizeId);

        return "redirect:/listHackathonPrize";
    }
}