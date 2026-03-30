package com.proj.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proj.dao.CourseDao;
import com.proj.entity.Course;

@Service
public class CourseService {

    @Autowired
    private CourseDao dao;

    public List<Course> getCourses() {
        return dao.getCourses();
    }

    public void saveCourse(Course c) {
        dao.saveCourse(c);
    }

    public Course getCourse(int id) {
        return dao.getCourse(id);
    }

    public void deleteCourse(int id) {
        dao.deleteCourse(id);
    }
}