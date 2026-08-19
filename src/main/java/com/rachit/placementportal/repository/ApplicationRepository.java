package com.rachit.placementportal.repository;

import com.rachit.placementportal.entity.Application;
import com.rachit.placementportal.entity.PlacementDrive;
import com.rachit.placementportal.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ApplicationRepository extends JpaRepository<Application, Long> {

    List<Application> findByStudent(Student student);

    boolean existsByStudentAndPlacementDrive(Student student,
                                             PlacementDrive placementDrive);

}