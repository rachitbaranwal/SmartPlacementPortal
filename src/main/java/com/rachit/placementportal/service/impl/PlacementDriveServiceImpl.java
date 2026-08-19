package com.rachit.placementportal.service.impl;

import com.rachit.placementportal.entity.PlacementDrive;
import com.rachit.placementportal.repository.PlacementDriveRepository;
import com.rachit.placementportal.service.PlacementDriveService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlacementDriveServiceImpl implements PlacementDriveService {

    private final PlacementDriveRepository placementDriveRepository;

    public PlacementDriveServiceImpl(PlacementDriveRepository placementDriveRepository) {
        this.placementDriveRepository = placementDriveRepository;
    }

    @Override
    public PlacementDrive saveDrive(PlacementDrive drive) {
        return placementDriveRepository.save(drive);
    }

    @Override
    public List<PlacementDrive> getAllDrives() {
        return placementDriveRepository.findAll();
    }

    @Override
    public PlacementDrive getDriveById(Long id) {
        return placementDriveRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Placement Drive Not Found"));
    }

    @Override
    public void deleteDrive(Long id) {
        placementDriveRepository.deleteById(id);
    }
    @Override
    public long getTotalDrives() {
        return placementDriveRepository.count();
    }
    @Override
    public List<PlacementDrive> searchDrives(String keyword) {

        return placementDriveRepository
                .findByCompanyNameContainingIgnoreCaseOrJobRoleContainingIgnoreCase(
                        keyword,
                        keyword
                );

    }
}