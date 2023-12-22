package com.itmk.web.course.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class CourseList {
    private Long currentPage;
    private Long pageSize;
    private String courseName;
    private String teacherName;
}
