package com.rachit.placementportal.controller;

import com.rachit.placementportal.entity.Student;
import com.rachit.placementportal.service.StudentService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/student")
public class StudentController {

    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    // ---------------- REGISTER ----------------

    @GetMapping("/register")
    public String showRegisterPage() {
        return "register";
    }

    @PostMapping("/register")
    public String registerStudent(@ModelAttribute Student student,
                                  Model model) {

        try {

            studentService.registerStudent(student);

            model.addAttribute("success",
                    "Registration Successful!");

        } catch (RuntimeException e) {

            model.addAttribute("error",
                    e.getMessage());

        }

        return "register";
    }

    // ---------------- LOGIN ----------------

    @GetMapping("/login")
    public String showLoginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String loginStudent(@RequestParam String email,
                               @RequestParam String password,
                               HttpSession session,
                               Model model) {

        try {

            Student student =
                    studentService.loginStudent(email, password);

            session.setAttribute("loggedInStudent", student);

            return "redirect:/student/dashboard";

        } catch (RuntimeException e) {

            model.addAttribute("error",
                    e.getMessage());

            return "login";
        }
    }

    // ---------------- DASHBOARD ----------------

    @GetMapping("/dashboard")
    public String dashboard(HttpSession session,
                            Model model) {

        Student student =
                (Student) session.getAttribute("loggedInStudent");

        if (student == null) {
            return "redirect:/student/login";
        }

        model.addAttribute("student", student);

        return "dashboard";
    }

    // ---------------- LOGOUT ----------------

    @GetMapping("/logout")
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/";
    }

}