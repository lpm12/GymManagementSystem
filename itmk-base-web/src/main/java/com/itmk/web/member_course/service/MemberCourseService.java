package com.itmk.web.member_course.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.itmk.web.member_course.entity.MemberCourse;

/**
 * @Author lpm
 *  
 */
public interface MemberCourseService extends IService<MemberCourse> {
    //报名
    void joinCourse(MemberCourse memberCourse);
    //退课
    void quitCourse(MemberCourse memberCourse);

}
