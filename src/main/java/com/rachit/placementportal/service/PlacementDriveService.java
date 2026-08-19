package com.rachit.placementportal.service;

import com.rachit.placementportal.entity.PlacementDrive;

import java.util.List;

public interface PlacementDriveService {

    PlacementDrive saveDrive(PlacementDrive drive);

    List<PlacementDrive> getAllDrives();

    PlacementDrive getDriveById(Long id);

    void deleteDrive(Long id);
    long getTotalDrives();
    List<PlacementDrive> searchDrives(String keyword);
}