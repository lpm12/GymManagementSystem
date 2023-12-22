package com.itmk.web.member_course.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itmk.web.course.entity.Course;
import com.itmk.web.course.service.CourseService;
import com.itmk.web.member.entity.RechargeParm;
import com.itmk.web.member.mapper.MemberMapper;
import com.itmk.web.member_course.entity.MemberCourse;
import com.itmk.web.member_course.mapper.MemberCourseMapper;
import com.itmk.web.member_course.service.MemberCourseService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @Author lpm
 *  
 */
@Service
public class MemberCourseServiceImpl extends ServiceImpl<MemberCourseMapper, MemberCourse> implements MemberCourseService {
    @Autowired
    private CourseService courseService;
    @Resource
    private MemberMapper memberMapper;

    @Override
    @Transactional
    public void joinCourse(MemberCourse memberCourse) {
        //根据课程id查询课程信息
        Course course = courseService.getById(memberCourse.getCourseId());
        BeanUtils.copyProperties(course,memberCourse);
        //查询报名表
        int insert = this.baseMapper.insert(memberCourse);
        if(insert > 0){
            //扣减会员的充值金额
            RechargeParm parm = new RechargeParm();
            parm.setMemberId(memberCourse.getMemberId());
            parm.setMoney(course.getCoursePrice());
            memberMapper.subMoney(parm);
        }
    }

    @Override
    @Transactional
    public void quitCourse(MemberCourse memberCourse) {
        try {
            // 查询报名信息
            MemberCourse existingMemberCourse = this.getById(memberCourse.getMemberCourseId());
            // 根据课程id查询课程信息
            Course course = courseService.getById(existingMemberCourse.getCourseId());
            // 删除报名记录
            this.baseMapper.deleteById(existingMemberCourse.getMemberCourseId());
            // 返还课程费用
            RechargeParm parm = new RechargeParm();
            parm.setMemberId(existingMemberCourse.getMemberId());
            parm.setMoney(course.getCoursePrice());
            memberMapper.addMoney(parm);
            // 退课成功后减少课程的 registerNumber
            course.setRegisterNumber(course.getRegisterNumber() - 1);
            courseService.updateById(course);
        } catch (Exception e) {
            e.printStackTrace();
            // 根据实际情况抛出自定义异常或进行其他处理
            throw new RuntimeException("退课失败，发生异常：" + e.getMessage());
        }
    }
}
