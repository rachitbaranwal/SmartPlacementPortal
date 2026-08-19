package com.rachit.placementportal.service;

import com.rachit.placementportal.entity.Student;

import java.util.List;

public interface StudentService {

    // Register a new student
    Student registerStudent(Student student);

    // Login student
    Student loginStudent(String email, String password);

    // Get student by email
    Student getStudentByEmail(String email);

    // Get all students
    List<Student> getAllStudents();

    // Get student by ID
    Student getStudentById(Long id);

    // Delete student
    void deleteStudent(Long id);

}