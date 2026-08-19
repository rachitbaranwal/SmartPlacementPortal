package com.rachit.placementportal.service;

import com.rachit.placementportal.entity.Application;
import com.rachit.placementportal.entity.PlacementDrive;
import com.rachit.placementportal.entity.Student;

import java.util.List;

public interface ApplicationService {

    Application apply(Application application);

    List<Application> getApplicationsByStudent(Student student);

    List<Application> getAllApplications();

    boolean hasAlreadyApplied(Student student,
                              PlacementDrive drive);
    long getTotalApplications();

}