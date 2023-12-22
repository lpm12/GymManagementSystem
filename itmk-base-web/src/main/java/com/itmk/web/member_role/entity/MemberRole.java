package com.itmk.web.member_role.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @Author lpm
 *
 */
@Data
@TableName("member_role")
public class MemberRole {
    @TableId(type = IdType.AUTO)
    private Long memberRoleId;
    private Long memberId;
    private Long roleId;
}
