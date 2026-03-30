package com.proj.dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.proj.entity.Course;

@Repository
public class CourseDao {

    private static List<Course> list = new ArrayList<>();
    private static int idCounter = 2;

    static {
        Course c = new Course();
        c.setId(1);
        c.setName("Java");
        c.setInstructor("Venkat");
        list.add(c);
    }

    public List<Course> getCourses() {
        return list;
    }

    public void saveCourse(Course c) {
        if (c.getId() == 0) {
            c.setId(idCounter++);
            list.add(c);
        } else {
            for (Course course : list) {
                if (course.getId() == c.getId()) {
                    course.setName(c.getName());
                    course.setInstructor(c.getInstructor());
                    return;
                }
            }
        }
    }

    public Course getCourse(int id) {
        for (Course c : list) {
            if (c.getId() == id) return c;
        }
        return null;
    }

    public void deleteCourse(int id) {
        list.removeIf(c -> c.getId() == id);
    }
}