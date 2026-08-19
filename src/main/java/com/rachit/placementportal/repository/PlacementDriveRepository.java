package com.rachit.placementportal.repository;

import com.rachit.placementportal.entity.PlacementDrive;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PlacementDriveRepository extends JpaRepository<PlacementDrive, Long> {

    List<PlacementDrive> findByCompanyNameContainingIgnoreCaseOrJobRoleContainingIgnoreCase(
            String companyName,
            String jobRole
    );

}