package com.rachit.placementportal.controller;

import com.rachit.placementportal.entity.Application;
import com.rachit.placementportal.entity.PlacementDrive;
import com.rachit.placementportal.entity.Student;
import com.rachit.placementportal.service.ApplicationService;
import com.rachit.placementportal.service.PlacementDriveService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/applications")
public class ApplicationController {

    private final ApplicationService applicationService;
    private final PlacementDriveService placementDriveService;

    public ApplicationController(ApplicationService applicationService,
                                 PlacementDriveService placementDriveService) {
        this.applicationService = applicationService;
        this.placementDriveService = placementDriveService;
    }

    // Show all placement drives
    @GetMapping("/drives")
    public String viewPlacementDrives(Model model) {

        model.addAttribute("drives",
                placementDriveService.getAllDrives());

        return "student-drives";
    }

    // Apply for a drive
    @PostMapping("/apply/{id}")
    public String applyForDrive(@PathVariable Long id,
                                HttpSession session) {

        Student student =
                (Student) session.getAttribute("loggedInStudent");

        if (student == null) {
            return "redirect:/student/login";
        }

        PlacementDrive drive =
                placementDriveService.getDriveById(id);

        Application application = new Application();

        application.setStudent(student);
        application.setPlacementDrive(drive);

        applicationService.apply(application);

        return "redirect:/applications/my";
    }

    // View My Applications
    @GetMapping("/my")
    public String myApplications(HttpSession session,
                                 Model model) {

        Student student =
                (Student) session.getAttribute("loggedInStudent");

        if (student == null) {
            return "redirect:/student/login";
        }

        model.addAttribute("applications",
                applicationService.getApplicationsByStudent(student));

        return "my-applications";
    }

}