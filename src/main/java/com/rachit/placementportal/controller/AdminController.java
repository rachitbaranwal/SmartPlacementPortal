package com.rachit.placementportal.controller;

import com.rachit.placementportal.service.ApplicationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    private final ApplicationService applicationService;

    public AdminController(ApplicationService applicationService) {
        this.applicationService = applicationService;
    }

    @GetMapping("/admin/applications")
    public String viewApplications(Model model){

        model.addAttribute("applications",
                applicationService.getAllApplications());

        return "admin-applications";
    }

}