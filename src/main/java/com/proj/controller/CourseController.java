package com.proj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.proj.entity.Course;
import com.proj.service.CourseService;

@Controller
public class CourseController {

    @Autowired
    private CourseService service;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("courses", service.getCourses());
        return "home";
    }

    @GetMapping("/addCourse")
    public String addCourse() {
        return "AddCourse";
    }

    @PostMapping("/saveCourse")
    public String saveCourse(@ModelAttribute Course c) {
        service.saveCourse(c);
        return "redirect:/";
    }

    @GetMapping("/editCourse/{id}")
    public String editCourse(@PathVariable int id, Model model) {
        model.addAttribute("course", service.getCourse(id));
        return "Edit";
    }

    @PostMapping("/updateCourse")
    public String updateCourse(@ModelAttribute Course c) {
        service.saveCourse(c);
        return "redirect:/";
    }

    @GetMapping("/deleteCourse/{id}")
    public String deleteCourse(@PathVariable int id) {
        service.deleteCourse(id);
        return "redirect:/";
    }
}