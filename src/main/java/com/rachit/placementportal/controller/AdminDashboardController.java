package com.rachit.placementportal.controller;

import com.rachit.placementportal.repository.StudentRepository;
import com.rachit.placementportal.service.ApplicationService;
import com.rachit.placementportal.service.PlacementDriveService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminDashboardController {

    private final StudentRepository studentRepository;
    private final PlacementDriveService placementDriveService;
    private final ApplicationService applicationService;

    public AdminDashboardController(StudentRepository studentRepository,
                                    PlacementDriveService placementDriveService,
                                    ApplicationService applicationService) {

        this.studentRepository = studentRepository;
        this.placementDriveService = placementDriveService;
        this.applicationService = applicationService;
    }

    @GetMapping("/admin/dashboard")
    public String dashboard(Model model){

        model.addAttribute("students",
                studentRepository.count());

        model.addAttribute("drives",
                placementDriveService.getTotalDrives());

        model.addAttribute("applications",
                applicationService.getTotalApplications());

        return "admin-dashboard";
    }

}