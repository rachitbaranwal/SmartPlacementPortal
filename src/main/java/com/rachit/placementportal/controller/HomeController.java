package com.rachit.placementportal.controller;

import com.rachit.placementportal.service.PlacementDriveService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    private final PlacementDriveService placementDriveService;

    public HomeController(PlacementDriveService placementDriveService) {
        this.placementDriveService = placementDriveService;
    }

    @GetMapping("/")
    public String home(Model model) {

        model.addAttribute("drives", placementDriveService.getAllDrives());

        return "index";
    }
}