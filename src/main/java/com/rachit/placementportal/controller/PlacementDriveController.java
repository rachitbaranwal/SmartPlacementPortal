package com.rachit.placementportal.controller;

import com.rachit.placementportal.entity.PlacementDrive;
import com.rachit.placementportal.service.PlacementDriveService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/drives")
public class PlacementDriveController {

    private final PlacementDriveService placementDriveService;

    public PlacementDriveController(PlacementDriveService placementDriveService) {
        this.placementDriveService = placementDriveService;
    }

    // Show Create Placement Drive Form
    @GetMapping("/new")
    public String showCreateForm(Model model) {
        model.addAttribute("drive", new PlacementDrive());
        return "create-drive";
    }

    // Save New Drive or Update Existing Drive
    @PostMapping("/save")
    public String saveDrive(@ModelAttribute PlacementDrive drive) {
        placementDriveService.saveDrive(drive);
        return "redirect:/drives";
    }

    // View All Placement Drives / Search Placement Drives
    @GetMapping
    public String viewDrives(
            @RequestParam(value = "keyword", required = false) String keyword,
            Model model) {

        if (keyword != null && !keyword.trim().isEmpty()) {
            model.addAttribute("drives",
                    placementDriveService.searchDrives(keyword));
        } else {
            model.addAttribute("drives",
                    placementDriveService.getAllDrives());
        }

        model.addAttribute("keyword", keyword);

        return "drives";
    }

    // Show Edit Form
    @GetMapping("/edit/{id}")
    public String editDrive(@PathVariable Long id, Model model) {

        PlacementDrive drive = placementDriveService.getDriveById(id);

        model.addAttribute("drive", drive);

        return "create-drive";
    }

    // Delete Placement Drive
    @GetMapping("/delete/{id}")
    public String deleteDrive(@PathVariable Long id) {

        placementDriveService.deleteDrive(id);

        return "redirect:/drives";
    }
}