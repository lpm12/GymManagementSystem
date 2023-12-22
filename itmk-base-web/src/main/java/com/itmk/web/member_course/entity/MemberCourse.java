package com.itmk.web.member_course.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @Author lpm
 *
 */
@Data
@TableName("member_course")
public class MemberCourse {
    @TableId(type = IdType.AUTO)
    private Long memberCourseId;
    private Long courseId;
    private Long memberId;
    private Long teacherId;
    private String courseName;
    private String image;
    private String teacherName;
    private Integer courseHour;
    private String courseDetails;
    private BigDecimal coursePrice;
    @JsonFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",timezone = "GMT+8")
    private Date startTime;
    private Integer courseTime;
}
