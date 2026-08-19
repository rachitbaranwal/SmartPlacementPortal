package com.rachit.placementportal.service.impl;

import com.rachit.placementportal.entity.Application;
import com.rachit.placementportal.entity.PlacementDrive;
import com.rachit.placementportal.entity.Student;
import com.rachit.placementportal.repository.ApplicationRepository;
import com.rachit.placementportal.service.ApplicationService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicationServiceImpl implements ApplicationService {

    private final ApplicationRepository applicationRepository;

    public ApplicationServiceImpl(ApplicationRepository applicationRepository) {
        this.applicationRepository = applicationRepository;
    }

    @Override
    public Application apply(Application application) {
        return applicationRepository.save(application);
    }

    @Override
    public List<Application> getApplicationsByStudent(Student student) {
        return applicationRepository.findByStudent(student);
    }

    @Override
    public List<Application> getAllApplications() {
        return applicationRepository.findAll();
    }

    @Override
    public boolean hasAlreadyApplied(Student student,
                                     PlacementDrive drive) {

        return applicationRepository.existsByStudentAndPlacementDrive(student,
                drive);
    }
    @Override
    public long getTotalApplications() {
        return applicationRepository.count();
    }

}